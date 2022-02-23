prix = 5

if prix > 8
	puts "C'est beaucoup trop cher"
elsif prix > 5 then
	puts "C'est trop cher."
else
	puts "C'est bien assez cher"
end

puts "Entrez un nombre inférieur à 100"
nombre = gets

unless Integer(nombre) > 100 then
	puts "C'est bien. Vous écoutez ce qu'on vous dis."
else
	puts "Vous êtes un rebelle."
end

puts "Entrez un nombre ou v pour valider."
ligne = "";
resultat = 0;

while ligne != "v\n"
	ligne = gets
	
	if ligne != 0 then
		resultat += ligne.to_i
	end
end

puts "Resultat = #{resultat}"


nombre = 10
puts "nombre = #{nombre}"
until nombre <= 0
	nombre = nombre - 1
	puts "nombre = #{nombre}"
end


puts "Entrez votre prénom."
input = gets
case input
	when "toto\n"
		puts "Salut TOTO"
	when "tata\n"
		puts "Coucou tata"
	when "titi\n"
		puts "piou piou"
	else
		print "Salut toi"
end

puts "\nEntrez une année."
year = gets
kind = case year
         when 1850..1889 then "Blues"
         when 1890..1909 then "Ragtime"
         when 1910..1929 then "New Orleans Jazz"
         when 1930..1939 then "Swing"
         when 1940..1950 then "Bebop"
         else                 "Jazz"
       end
puts kind
retour = gets