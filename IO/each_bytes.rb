aFile = File.new("fichierTexte.txt")
# putc ch : affiche le premier byte de ch
aFile.each_byte {|ch| putc ch; putc ?. }
aFile.close