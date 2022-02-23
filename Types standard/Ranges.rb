l = (1..10).to_a

l.each do |a|
	puts a
end

l = ('bar'..'bat').to_a

l.each do |a|
	puts a
end

digits = 0..9

if digits.include?(5) then
	puts "digits inclue 5"
end

puts digits.min
puts digits.max
puts "#{digits.reject {|i| i < 5 }} "

if (1..10) === 5 then
	puts "(1..10) inclue 5"
else
	puts "(1..10) n'inclue pas 5"
end

if (1..10) === 15 then
	puts "(1..10) inclue 15"
else
	puts "(1..10) n'inclue pas 15"
end

if (1..10) === 3.14159 then
	puts "(1..10) inclue 3.14159"
else
	puts "(1..10) n'inclue pas 3.14159"
end

if ('a'..'j') === 'c' then
	puts "('a'..'j') inclue 'c'"
else
	puts "('a'..'j') n'inclue pas 'c'"
end

if ('a'..'j') === 'z' then
	puts "('a'..'j') inclue 'z'"
else
	puts "('a'..'j') n'inclue pas 'z'"
end
