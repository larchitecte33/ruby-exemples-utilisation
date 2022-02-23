module Inject
  def inject(n)
     each do |value|
       n = yield(n, value)
     end
     n
  end
  def sum(initial = 0)
    inject(initial) { |n, value| n + value }
  end
  def product(initial = 1)
    inject(initial) { |n, value| n * value }
  end
end

class Array
  include Inject
end

a = [ 1, 2, 3, 4, 5 ].sum
puts "[ 1, 2, 3, 4, 5 ].sum : #{a}"
a = [ 1, 2, 3, 4, 5 ].product
puts "[ 1, 2, 3, 4, 5 ].product : #{a}"

class Range
  include Inject
end

puts "(1..5).sum : #{(1..5).sum}"
puts "(1..5).product : #{(1..5).product}"
puts "('a'..'m').sum(\"Letters: \") : #{('a'..'m').sum("Letters: ")}"