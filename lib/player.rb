class Player

  attr_reader :name
  attr_accessor :health

  DEFAULT_HEALTH = 100

  def initialize(name, health = DEFAULT_HEALTH)
    @name = name
    @health = health
  end

  def attack(player)
    player.take_damage(10) 
  end

  def take_damage(amount)
    @health -=amount
  end
end