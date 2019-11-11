class Player
  attr_reader :life
  attr_reader :name


  def initialize(name)
    @name = name
    @life = 3
  end

  def minusLife
     @life -= 1
  end
  
end

