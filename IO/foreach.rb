IO.foreach("fichierTexte.txt") { |line| puts line }

arr = IO.readlines("fichierTexte.txt")
puts "Length = #{arr.length}"
puts "arr[0] = #{arr[0]}"
puts "arr[2] = #{arr[2]}"
puts "arr[8] = #{arr[8]}"