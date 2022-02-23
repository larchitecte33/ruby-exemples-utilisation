require 'socket'
require 'net/http'
require 'net/https'

client = TCPSocket.open('localhost', '80')
client.send("test\n", 0)    # 0 means standard packet
puts client.readlines
client.close


h = Net::HTTP.new('www.sphere-informatique.com', 80)
resp, data = h.get('/index.html', nil)

puts resp.message
puts resp.body

#1."Location" response redirect...
if resp.response['Location']!=nil then
  puts 'Direct to: ' + resp.response['Location']
  redirectUrl=resp.response['Location']
end