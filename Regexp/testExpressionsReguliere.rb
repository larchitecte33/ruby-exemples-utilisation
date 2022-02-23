line = "19:24:12"
if line =~ /\d\d:\d\d:\d\d/		# a time such as 12:34:56
	puts "Test1"
end

line = "Perl kzkzkz Python"
if line =~ /Perl.*Python/		# Perl, zero or more other chars, then Python
	puts "Test2"
end

line = "Perl   Python"
if line =~ /Perl\s+Python/		# Perl, one or more spaces, then Python
	puts "Test3"
end

line = "Ruby Python"
if line =~ /Ruby (Perl|Python)/	# Ruby, a space, and either Perl or Python
	puts "Test4"
end