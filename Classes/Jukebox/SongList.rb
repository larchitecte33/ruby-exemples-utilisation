require_relative 'Song'

class SongList
	MaxTime = 5*60	# 5 minutes
	
	def initialize
		@songs = Array.new
	end
	
	def SongList.IsTooLong(aSong)
		aSong.duration > MaxTime
	end
	
	def append(aSong)
		@songs.push(aSong)
		self
	end
	
	def deleteFirst
		@songs.shift
	end
	
	def deleteLast
		@songs.pop
	end
	
	def [](key)
		return @songs[key] if key.kind_of?(Integer)
		return @songs.find { |aSong| aSong.name == key}
	end
end