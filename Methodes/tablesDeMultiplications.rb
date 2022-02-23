print "(m)ultiplie ou (p)lus: "
multiplie = gets
print "nombre : "
nombre = gets.to_i

# proc : permet de lier le block "{ |n| n*nombre }" � la variable locale calc
if multiplie =~ /^m/
	calc = proc { |n| n*nombre }
else
	calc = proc { |n| n+nombre }
end

# collect : invoque le block donn� une fois pour chaque �l�ment de self
#           cr�e un nouveau tableau contenant les valeurs retourn�es par le block
puts((1..10).collect(&calc).join(", "))