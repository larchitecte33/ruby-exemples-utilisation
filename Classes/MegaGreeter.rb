#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :names

  # Création d'un objet
  def initialize(names = "World")
    @names = names
  end

  # Saluer tout le monde
  def say_hi
	# Si le paramètre @names n'a pas de valeur, alors on affiche ...
    if @names.nil?
      puts "..."
	# Si le paramètre @name, qui est un objet, comme toute chose en Ruby, comprend la méthode each, cela signifie qu’il contient plusieurs choses
    elsif @names.respond_to?("each")
      # @names est une liste de noms : traitons-les uns par uns
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Dire au revoir à tout le monde
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Grouper les différents noms de la liste par des virgules
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end

end

puts "__FILE__ : " + __FILE__
puts "$0 : " + $0

# Si le nom du fichier courant est égal au nom du fichier utilisé pour lancer le programme courant
if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Modifier le nom en Zeke
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Changer le nom pour un tableau (une liste de noms)
  mg.names = ["Albert", "Brenda", "Charles",
    "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Maintenant, le nom n'est plus...
  mg.names = nil
  mg.say_hi
  mg.say_bye
end