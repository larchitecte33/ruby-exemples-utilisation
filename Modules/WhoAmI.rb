module Debug
  def whoAmI?
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}"
  end
end

class Phonograph
  include Debug
  
  def initialize(nom)
	@nom = nom
  end
  
  def to_s
	"#{@nom}"
  end
end

class EightTrack
  include Debug
  
  def initialize(nom)
	@nom = nom
  end
  
  def to_s
	"#{@nom}"
  end
end

ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")
puts ph.whoAmI?
puts et.whoAmI?