class Property
  attr_accessor :name, :color, :price, :rent 
  @times_landed = 0
  attr_reader :times_landed
  def initialize (name)
    @name = name
    @times_landed = 0
  end
  def land
    @times_landed = @times_landed+1
  end
end
