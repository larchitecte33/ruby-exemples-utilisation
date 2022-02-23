a = b = 1 + 7 + 9
puts "a = #{a}"
puts "b = #{b}"

a = (b = 1 + 2) + 3
puts "a = #{a}"
puts "b = #{b}"

# Echange de variables
a = 1
b = 2
a, b = b, a
puts "a = #{a}"
puts "b = #{b}"

# Assignements parallèles
x = 0
a, b, c = x, (x += 2), (x -= 3)
puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"

a = [1, 2, 3, 4]
b, c = a
puts "b = #{b}, c = #{c}"
b, *c = a
puts "b = #{b}, c = #{c}"
b, c = 99, a
puts "b = #{b}, c = #{c}"
b, *c = 99, a
puts "b = #{b}, c = #{c}"
b, c = 99, *a
puts "b = #{b}, c = #{c}"
b, *c = 99, *a
puts "b = #{b}, c = #{c}"

# Assignements imbriqués
b, (c, d), e = 1, 2, 3, 4
puts "b = #{b}, c = #{c}, d = #{d}, e = #{e}"
b, (c, d), e = [1,2,3,4]
puts "b = #{b}, c = #{c}, d = #{d}, e = #{e}"
b, (c, d), e = 1,[2,3],4
puts "b = #{b}, c = #{c}, d = #{d}, e = #{e}"
b, (c, d), e = 1,[2,3,4],5
puts "b = #{b}, c = #{c}, d = #{d}, e = #{e}"
b, (c,*d), e = 1,[2,3,4],5
puts "b = #{b}, c = #{c}, d = #{d}, e = #{e}"


class Bowdlerize
  def initialize(aString)
    @value = aString.gsub(/[aeiou]/, '*')
  end
  def +(other)
    Bowdlerize.new(self.to_s + other.to_s)
  end
  def to_s
    @value
  end
end
a = Bowdlerize.new("damn ")
puts a
a += "shame"
puts a

puts '********************************'

puts defined? 1
puts defined? toto
puts defined? printf
puts defined? String
puts defined? $&
puts defined? $_
puts defined? Math::PI
puts defined? c = 1
puts defined? 42.abs