require 'net/http'
require 'resolv-replace.rb'

# %w(foo bar) est un raccourci pour ["foo", "bar"]. C'est une notation pour un tableau de strings séparés par des espaces au lieu de virgules
# et sans quotes autour
pages = %w( www.commentcamarche.net
            www.youtube.com
			www.dailymotion.com
		)

threads = []

for page in pages
	# Ici, on définit une nouvelle variable myPage qui est passée en paramètre du block.
	# Cela dans le but que chaque thread ait sa propre copie de la variable myPage qui ne soit modifiée que par le thread lui-même
	threads << Thread.new(page) { |myPage|
		h = Net::HTTP.new(myPage, 80)
		puts "Fetching : #{myPage}"
		resp, data = h.get('/', nil)
		puts "Got : #{myPage} : #{resp.message}"
	}
end

# monThread.join permet d'attendre que le thread monThread ait terminé son exécution pour terminer l'exécution du programme
# threads.each {|aThread| aThread.join} permet d'attendre que tous les threads ait terminés leur exécution pour terminer l'exécution du programme
threads.each {|aThread| aThread.join}