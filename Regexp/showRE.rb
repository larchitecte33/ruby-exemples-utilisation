def showRE(a, re)
	if a =~ re
		puts "#{$`}<<#{$&}>>#{$'}"
	else
		puts "pas de correspondance"
	end
end

showRE('very interesting', /t/)
showRE('Fats Waller', /ll/)
showRE('kangaroo', /angar/)
showRE('!@%&-_=+', /%&/)

# Echappement des caractères spéciaux
showRE('yes | no', /\|/)
showRE('yes (no)', /\(no\)/)
showRE('are you sure?', /e\?/)

# /^option/ trouve une correspondance avec le mot "option" seulement si celui-i apparaît au début d'un ligne
showRE('option 1 pour le bac', /^option/)
showRE('deuxieme option pour le bac', /^option/)

# /option$/ trouve une correspondance avec le mot "option" seulement si celui-i apparaît à la fin d'une ligne
showRE('pour le bac, j\'ai pris une option', /option$/)
showRE('option 1 pour le bac', /option$/)

# \b et \B trouve une correspondance en tenant compte des limites du mot ou pas (respectivement)
showRE("this is\nthe time", /\bis/)
showRE("this is\nthe time", /\Bis/)

# [] représente une classe de caractères
showRE('It costs $12.', /[aeiou]/)
showRE('It costs $12.', /[\s]/)

a = 'Gamma [Design Patterns-page 123]'
showRE(a, /[]]/)
showRE(a, /[B-F]/)
showRE(a, /[-]/)
showRE(a, /[0-9]/)

# Abbréviation des caractères de classes
# \d correspond à un chiffre
# \D correspond à un caractère qui n'est pas un non chiffre
# \s correspond à un espace
# \S correspond à un caractère qui n'est pas un espace
# \w correspond à une lettre
# \W correspond à un caractère qui n'est pas une lettre

# Le point apparaissant à l'exterieur des crochets représente n'importe quel caractère excepté un retour à la ligne
a = 'It costs $12.'
showRE(a, /c.s/)
showRE(a, /./)
showRE(a, /\./)

# r * 	  matches zero or more occurrences of r.
# r + 	  matches one or more occurrences of r.
# r ? 	  matches zero or one occurrence of r.
# r {m,n} matches at least "m" and at most "n" occurrences of r.
# r {m,}  matches at least "m" occurrences of r.
a = "The moon is made of cheese"
showRE(a, /\w+/)
showRE(a, /\s.*\s/)
showRE(a, /\s.*?\s/)
showRE(a, /[aeiou]{2,99}/)
showRE(a, /mo?o/)

# | signifie ou
a = "red ball blue sky"
showRE(a, /d|e/)
showRE(a, /al|lu/)
showRE(a, /red ball|angry sky/)

# les paranthèses peuvent être utilisés pour grouper des termes
# tout ce qui se trouve dans le groupe est traité en tant qu'une seule expression régulière
showRE('banana', /an*/)
showRE('banana', /(an)*/)
showRE('banana', /(an)+/)

a = 'red ball blue sky'
showRE(a, /blue|red/)
showRE(a, /(blue|red) \w+/)
showRE(a, /(red|blue) \w+/)
showRE(a, /red|blue \w+/)

showRE(a, /red (ball|angry) sky/)
a = 'the red angry sky'
showRE(a, /red (ball|angry) sky/)

# l'opérateur =~ vérifie s'il y a une correspondance entre l'expression de droite et celle de gauche et renvoie l'index
# de début de la correspondance ou nil s'il n'y a pas de correspondance
"12:50am" =~ /(\d\d):(\d\d)(..)/
# $1 fait référence à la correspondance du premier groupe, $2 fait référence à la correspondance du deuxième groupe, etc...
puts "Hour is #$1, minute #$2"
"12:50am" =~ /((\d\d):(\d\d))(..)/
puts "Time is #$1"
puts "Hour is #$2, minute #$3"
puts "AM/PM is #$4"

# match duplicated letter
showRE('He said "Hello"', /(\w)\1/)

# match duplicated substrings
showRE('Mississippi', /(\w+)\1/)

# \1 est une backreference qui ne fonctionnera que dans la même sub ou gsub méthode
showRE('He said "Hello"', /(["']).*?\1/)
showRE("He said 'Hello'", /(["']).*?\1/)

a = "the quick brown fox"
puts a.sub(/[aeiou]/,  '*')
puts a.gsub(/[aeiou]/, '*')
puts a.sub(/\s\S+/,  '')
puts a.gsub(/\s\S+/,  '')

a = "the quick brown fox"
puts a.sub(/^./) { $&.upcase }
puts a.gsub(/[aeiou]/) { $&.upcase }

