class Player
  attr_accessor :health

  def initialize
    @health = 3
  end

  def wrong
    @health -= 1
  end
end