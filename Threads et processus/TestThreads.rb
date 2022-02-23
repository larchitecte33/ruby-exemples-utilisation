require 'net/http'
require 'resolv-replace.rb'

# %w(foo bar) est un raccourci pour ["foo", "bar"]. C'est une notation pour un tableau de strings s�par�s par des espaces au lieu de virgules
# et sans quotes autour
pages = %w( www.commentcamarche.net
            www.youtube.com
			www.dailymotion.com
		)

threads = []

for page in pages
	# Ici, on d�finit une nouvelle variable myPage qui est pass�e en param�tre du block.
	# Cela dans le but que chaque thread ait sa propre copie de la variable myPage qui ne soit modifi�e que par le thread lui-m�me
	threads << Thread.new(page) { |myPage|
		h = Net::HTTP.new(myPage, 80)
		puts "Fetching : #{myPage}"
		resp, data = h.get('/', nil)
		puts "Got : #{myPage} : #{resp.message}"
	}
end

# monThread.join permet d'attendre que le thread monThread ait termin� son ex�cution pour terminer l'ex�cution du programme
# threads.each {|aThread| aThread.join} permet d'attendre que tous les threads ait termin�s leur ex�cution pour terminer l'ex�cution du programme
threads.each {|aThread| aThread.join}