3.times do
	print "Ho! "
end

puts ""

0.upto(9) do |x|
	print x, " "
end

puts ""

0.step(12, 3) {|x| print x, " "}

puts ""

[ 1, 1, 2, 3, 5 ].each {|val| print val, " " }

puts ""

for i in ['fee', 'fi', 'fo', 'fum']
  print i, " "
end

puts ""

for i in 1..9
  print i, " "
end

puts ""

class Periods
  def each
    yield "Classical"
    yield "Jazz"
    yield "Rock"
	yield "Coutry"
  end
end

periods = Periods.new
for genre in periods
  print genre, " "
end

puts ""

i=0
loop do
  i += 1
  next if i < 3
  print i
  break if i > 4
end

puts ""

if gets =~ /^y/i
	puts "test"
end


=begin 
for j in 1..100
  print "Now at #{j}. Restart? "
  reponse = gets
  retry if reponse =~ /^y/i
end
=end
