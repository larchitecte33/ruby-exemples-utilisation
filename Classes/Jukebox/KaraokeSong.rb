require_relative 'Song'

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  
  def to_s
	# @lyrics => variable d'instance
	# #{aaa} => transformer aaa en texte
	super + " [#{@lyrics}]"
  end
end

