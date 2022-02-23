class Song
	@@plays = 0
	def initialize(name, artist, duration)
		@name = name
		@artist = artist
		@duration = duration
		@plays = 0
	end
	
	# Getteurs
	attr_reader :name, :artist, :duration
	
	# Setters
	attr_writer :name, :artist, :duration
	
	def to_s
		"Song : #{@name}--#{@artist}  #{@duration}"
	end
	
	def durationInMinutes
		@duration/60.0   # force floating point
	end
  
	def durationInMinutes=(value)
		@duration = (value*60).to_i
	end
	
	def setStartTims(value)
		//
	end
	
	def play
		@plays += 1
		@@plays += 1
		"Cette chanson : #@plays écoutes. Total #@@plays écoutes."
	end
	
	def [](fromTime, toTime)
		result = Song.new(self.name + " [extract]",
						  self.artist,
						  toTime - fromTime)
		result.setStartTims(fromTime)
		result
	end
	
	include Comparable
	def <=> (other)
		self.duration <=> other.duration
	end
end

