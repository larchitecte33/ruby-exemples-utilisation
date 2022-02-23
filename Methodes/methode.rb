# Définition d'une méthode sans arguments
def a
	puts "Hello World !"
end

=begin
Appel de la méthode
C'est simple, non ?
=end
a

def b(nom)
	puts "Hello #{nom} !"
end

b("Gauthier")

def c(nom = "World")
	puts "Bonjour #{nom.capitalize} !"
end

c("gauthier")
c("aude")
c
c()