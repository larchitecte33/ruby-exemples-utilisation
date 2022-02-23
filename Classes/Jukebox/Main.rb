require_relative 'Song'
require_relative 'KaraokeSong'
require_relative 'SongList'
require_relative 'Logger'
require_relative 'Vu'

aSong = Song.new("Bicylops", "Fleck", 260)
puts aSong.inspect

puts '--------------'

puts aSong.to_s

puts '--------------'

mySong = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts mySong.to_s

puts '------------- ACCESSEURS -------------'
puts aSong.artist
puts aSong.name
puts aSong.duration

aSong.duration = 100

puts aSong.duration

puts aSong.durationInMinutes
aSong.durationInMinutes = 3.5
puts aSong.duration


s1 = Song.new("Song1", "Artist1", 234)  # test songs..
s2 = Song.new("Song2", "Artist2", 345)
puts s1.play
puts s2.play
puts s1.play
puts s1.play


song1 = Song.new("Bicylops", "Fleck", 260)

if SongList.IsTooLong(song1)
	puts "song1 is too long"
end

song2 = Song.new("The Calling", "Santana", 468)

if SongList.IsTooLong(song2)
	puts "song2 is too long"
end

list = SongList.new
list.append(Song.new('titre1', 'artiste1', 1)).append(Song.new('titre2', 'artiste2', 2)).append(Song.new('titre3', 'artiste3', 3)).append(Song.new('titre4', 'artiste4', 4))
puts "list[0] : #{list[0]}"
puts "list[1] : #{list[1]}"
puts "list[2] : #{list[2]}"
puts "list[3] : #{list[3]}"
puts "list[4] : #{list[4]}"

list.deleteFirst
puts "list[0] : #{list[0]}"
puts "list[1] : #{list[1]}"
puts "list[2] : #{list[2]}"
puts "list[3] : #{list[3]}"
puts "list[4] : #{list[4]}"

list.deleteLast
puts "list[0] : #{list[0]}"
puts "list[1] : #{list[1]}"
puts "list[2] : #{list[2]}"
puts "list[3] : #{list[3]}"
puts "list[4] : #{list[4]}"

songs = SongList.new
songFile = File.open("listeChansons.txt")
songFile.each do |line|
  file, length, name, title = line.chomp.split(/\s*\|\s*/)
  name.squeeze!(" ")
  mins, secs = length.scan(/\d+/)
  songs.append Song.new(title, name, mins.to_i*60+secs.to_i)
end
puts songs[1]
songFile.close()

medium = VU.new(4)..VU.new(7)
puts medium.inspect

if medium.include?(VU.new(3)) then
	puts "include VU.new(3)"
end

aSong[0, 0.15].play


song1 = Song.new("My Way",  "Sinatra", 225)
song2 = Song.new("Bicylops", "Fleck",  260)
puts song1 <=> song2

if song1 < song2
	puts "song1 < song2"
else
	puts "song1 >= song2"
end

if song1 == song1
	puts "song1 == song1"
else
	puts "song1 !== song1"
end

if song1 > song2
	puts "song1 > song2"
else
	puts "song1 <= song2"
end