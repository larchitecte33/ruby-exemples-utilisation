puts 'escape using "\\"'
puts 'That\'s right'
puts "Seconds/day: #{24*60*60}"
puts "#{'Ho! '*3}Merry Christmas"
puts "This is line #$."
puts %q/general single-quoted string/
puts %Q!general double-quoted string!
puts %Q{Seconds/day: #{24*60*60}}

aString = <<END_OF_STRING
    The body of the string
    is the input lines up to
    one ending with the same
    text that followed the '<<'
END_OF_STRING

puts aString

a = "Voici une petite chaine de caractères".split
a.each do |i|
	puts i
end

a = "Voici une petite chaine".chomp("aine")
puts a

a = "Aller les geeeeeeeeeeeeennnnnnnnns, oooooooonnnnnn continuuuue !!!!!!!!!!!".squeeze
puts a