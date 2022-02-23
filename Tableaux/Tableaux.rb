a = [3.14159, "pie", 99]
puts "a : #{a}"
puts "a.length : #{a.length}"
puts "a[0] : #{a[0]}"
puts "a[1] : #{a[1]} "
puts "a[2] : #{a[2]} "
puts "a[3] : #{a[3]} "

a = [1, 3, 5, 7, 9]
puts "a : #{a}"
puts "a[-1] : #{a[-1]}" # affiche 9
puts "a[-2] : #{a[-2]}" # affiche 7
puts "a[-99] : #{a[-99]}" # affiche ""

puts "a[1, 3] : #{a[1, 3]}" # affiche [3, 5, 7]
puts "a[3, 1] : #{a[3, 1]}" # affiche [7]
puts "a[-3, 2] : #{a[-3, 2]}" # affiche [5, 7]

puts "a[1..3] : #{a[1..3]}" # affiche [3, 5, 7]