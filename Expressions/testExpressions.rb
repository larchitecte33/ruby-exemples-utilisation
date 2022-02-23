puts `date`
puts `dir`
puts %x{echo "Hello World !!!"}
puts '----------------------------------'

alias oldBackquote `
def `(cmd)
  result = oldBackquote(cmd)
  if $? != 0
    raise "Command #{cmd} failed"
  end
  result
end
print `date`
puts "\n"
puts '----------------------------------'
print `data`