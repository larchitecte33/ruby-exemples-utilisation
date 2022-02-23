def takeBlock(p1)
	if block_given?
		yield(p1)
	else
		p1
	end
end

puts takeBlock("pas de block")
puts takeBlock("pas de block") { |s| s.sub(/pas de /, '') }


class TaxCalculator
	def initialize(name, &block)
		@name, @block = name, block
	end
	
	def getTax(montant)
		"#@name sur #{montant} = #{@block.call(montant)}"
	end
end

tc = TaxCalculator.new("Taxe sur les ventes") { |mnt| mnt * 0.075 }
puts tc.getTax(100)
puts tc.getTax(250)


def five(a, b, c, d, e)
	"J'ai passe #{a} #{b} #{c} #{d} #{e}"
end

puts five(1, 2, 3, 4, 5)
puts five(1, 2, 3, *['a', 'b'])
puts five(*(10..14).to_a)