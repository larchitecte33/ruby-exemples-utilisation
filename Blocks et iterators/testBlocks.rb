def on_dit_merci_a_qui(name)
	yield(name) if block_given?
end

on_dit_merci_a_qui("gogo") {|name| puts "Merci bien #{name}"}

on_dit_merci_a_qui("chouchou") do |name|
	puts "Merci bien #{name}"
end