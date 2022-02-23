person = "Tim"
puts person.object_id
puts person.class
puts person

person1 = "Tim"
person2 = person1 # Copie la référence de person1 dans person2
person1[0] = 'J'
puts person1
puts person2

person1 = "Tim"
person2 = person1.dup # Copie l'objet person1 dans person2
person1[0] = 'J'
puts person1
puts person2

person1 = "Tim"
person2 = person1
person1.freeze
person2[0] = "J"