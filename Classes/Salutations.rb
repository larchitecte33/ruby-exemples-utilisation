class Salutations
	# @nom -> variable d'instance (disponible pour toutes les méthodes de la classe)
	def initialize(nom = "World")
		@nom = nom
	end
	
	def direSalut
		puts "Salut #{@nom} !"
	end
	
	def direAuRevoir
		puts "Au revoir #{@nom}, à bientôt !"
	end
end

s = Salutations.new("Choupette")
s.direSalut
s.direAuRevoir

puts Salutations.instance_methods(false)
puts "------------------------------"

if s.respond_to?("nom")
	puts "nom"
end

if s.respond_to?("direSalut")
	puts "direSalut"
end
	
if s.respond_to?("to_s")
	puts "to_s"
end

# On ré-ouvre la classe pour lui définir un accesseur
class Salutations
	attr_accessor :nom
end

s = Salutations.new("Aude")

if s.respond_to?("nom")
	puts "s possède la méthode \"nom\""
end

if s.respond_to?("nom=")
	puts "s possède la méthode \"nom=\""
end

if s.respond_to?("nom+=")
	puts "s possède la méthode \"nom+=\""
end

s.direSalut
s.nom = "Toto"
s.direSalut