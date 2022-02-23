module MajorScales
  def majorNum
    @numNotes = 7 if @numNotes.nil?
    @numNotes # Return 7
  end
end


module PentatonicScales
  def pentaNum
    @numNotes = 5 if @numNotes.nil?
    @numNotes # Return 5?
  end
end


class ScaleDemo
  include MajorScales
  include PentatonicScales
  def initialize
    puts majorNum # Should be 7
    puts pentaNum # Should be 5
  end
end


ScaleDemo.new