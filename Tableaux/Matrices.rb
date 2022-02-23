require 'matrix.rb'

t = [[1, 2], [3, 4]]
puts t[0][0] # affiche 1
puts t[0][1] # affiche 2
puts t[1][0] # affiche 3
puts t[1][1] # affiche 4

puts '*****************'

t2 = Matrix[[1, 2], [3,4]]
puts t2[0,0] # affiche 1
puts t2[0,1] # affiche 2
puts t2[1,0] # affiche 3
puts t2[1,1] # affiche 4