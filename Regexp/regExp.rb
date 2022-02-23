puts "/hay/ =~ 'sahaystack' => #{/hay/ =~ 'sahaystack'}"
puts "/ta/.match('haystack') => #{/ta/.match('haystack')}"
puts "/needle/.match('haystack') => #{/needle/.match('haystack')}"
puts "/hay/.match('haystack') => #{/hay/.match('haystack')}"
puts "/hay/ =~ 'haystack' => #{/hay/ =~ 'haystack'}"
puts "/u/   =~ 'haystack' => #{/u/ =~ 'haystack'}"

# Les meta-caracteres sont (, ), [, ], {, }, ., ?, + et *
# Dans un expression régulière, si on souhaite qu'ils soient considérés comme des caractères simple, il faut ajouter un \ devant.
# Dans un expression régulière, si on souhaite qu'un \ soit considéré comme un caractère simple, il faut ajouter \\ devant
puts "/1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?') => #{/1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?')}"

# [aeiou] signifie que pour l'exression corresponde, on doit trouver soit un a, soit un e, soit un i, soit un o, soit un u
puts "/W[aeiou]rd/.match(\"Word\") => #{/W[aeiou]rd/.match("Word")}"

# [a-d] est équivalant à [abcd]
puts "/[0-9a-f]/.match('9f') => #{/[0-9a-f]/.match('9f')}"
puts "/[0-9][a-f]/.match('9f') => #{/[0-9][a-f]/.match('9f')}"
puts "/[9f]/.match('9f') => #{/[9f]/.match('9f')}"
puts "/[a-eg-z]/.match('f') => #{/[a-eg-z]/.match('r')}"

# ^ signifie que l'expression doit correspondre à tous les caractères sauf ceux nommés
puts "/[^a-eg-z]/.match('f') => #{/[^a-eg-z]/.match('f')}"