print "(m)ultiplie ou (p)lus: "
multiplie = gets
print "nombre : "
nombre = gets.to_i

# proc : permet de lier le block "{ |n| n*nombre }" à la variable locale calc
if multiplie =~ /^m/
	calc = proc { |n| n*nombre }
else
	calc = proc { |n| n+nombre }
end

# collect : invoque le block donné une fois pour chaque élément de self
#           crée un nouveau tableau contenant les valeurs retournées par le block
puts((1..10).collect(&calc).join(", "))