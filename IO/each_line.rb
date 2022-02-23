aFile = File.new("fichierTexte.txt")
aFile.each_line {|line| puts "Ligne : #{line.dump}" }
aFile.close