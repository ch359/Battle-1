class Player

  attr_reader :name
  attr_accessor :health

  DEFAULT_HEALTH = 100

  def initialize(name, health = DEFAULT_HEALTH)
    @name = name
    @health = health
  end



  def take_damage(amount)
    @health -=amount
  end
end

