puts "1)"
# yield exécute le code qui se trouve dans le block
def callBlock
  yield
  yield
end

callBlock { puts "In the block" }

# Résultat :
# In the block
# In the block

#############################################################################
puts "---------------------"
puts "2)"

a = %w( ant bee cat dog elk )    # create an array
# a.each parcourt tous les éléments du tableau a et exécute le block avec pour paramètre l'élément en cours de lecture
a.each { |animal| puts animal }  # iterate over the contents

# Résultat :
# ant
# bee
# cat
# dog
# elk

#############################################################################

puts "---------------------"
puts "3)"

# yield exécute le code qui se trouve dans le block
def threeTimes
	yield
	yield
	yield
end
threeTimes {puts "Salut"}

# Résultat :
# Salut
# Salut
# Salut

#############################################################################

puts "--------------------"
puts "4)"

def fibUpTo(max)
  i1, i2 = 1, 1        # parallel assignment
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

# La fonction fibUpTo est appelée avec max = 1000 et le block { |f| print f, " " }
# Au début de l'exécution de la fonction, i1 = 1 et i2 = 1
# Tant que i1 <= 1000, le block est appelé. Ce block va afficher la valeur de i1 et un espace. Puis i1 prend la valeur de i2 et i2 prend la valeur de i1 + i2
fibUpTo(1000) { |f| print f, " " }

# Résultat :
# 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987

############################################################################
puts ""
puts "--------------------"
puts "5)"

class Array
  def find
	# On parcourt chaque valeur du tableau sur lequel est appelé find
    for i in 0...size
	  # value prend la valeur du tableau à l'index i
      value = self[i]
	  # ici, yield correspond à la condition v*v > 30, avec v = value
      return value if yield(value)
    end
    return nil
  end
  
  def inject(n)
	 # Pour chaque valeur du tableau, quand inject est appelée avec le block n + value, alors on va additionner chaque élément du tableau
	 #                                quand inject est appelée avec le block n * value, alors on va multiplier chaque élément du tableau
     each { |value| n = yield(n, value) }
     n
  end
  
  def sum
    inject(0) { |n, value| n + value }
  end
  
  def product
    inject(1) { |n, value| n * value }
  end
end

a = [1, 3, 5, 7, 9, 11].find {|v| v*v > 30 }
puts "\na : #{a}"
b = [ 1, 2, 3, 4, 5 ].sum
puts "b : #{b}"
c = [ 1, 2, 3, 4, 5 ].product
puts "c : #{c}"

#############################################################################
puts "--------------------"
puts "6)"

class File
  def File.openAndProcess(*args)
	# On ouvre le fichier
    f = File.open(*args)
	# On exécute le code qui se trouve dans le block, à savoir, print while aFile.gets, ce qui va afficher toutes les lignes du fichier
    yield f
	# On ferme le fichier
    f.close()
  end
end

File.openAndProcess("fichierTest.txt", "r") do |aFile|
  print while aFile.gets
end

#############################################################################
puts ""
puts "--------------------"
puts "7)"

def nTimes(aThing)
  return proc { |n| aThing * n }
end
p1 = nTimes(23)
puts "\n#{p1.call(3)}"
puts "#{p1.call(4)}"
p2 = nTimes("Hello ")
puts "#{p2.call(3)}"

#############################################################################
puts "--------------------"
puts "8)"

def gen_times(factor)
  return Proc.new {|n| n*factor }
end

times3 = gen_times(3)
times5 = gen_times(5)

puts "#{times3.call(12)}"               #=> 36
puts "#{times5.call(5)}"                #=> 25
puts "#{times3.call(times5.call(4))}"   #=> 60