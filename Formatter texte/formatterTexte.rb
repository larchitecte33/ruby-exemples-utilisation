printf "Number: %5.2f, String: %s", 1234.2345, "hello"

puts "\nVeuillez entrer votre nom : "
line = gets
print "Votre nom est " + line

while gets           # assigns line to $_
  if /Ruby/          # matches against $_
    print            # prints $_
  end
end