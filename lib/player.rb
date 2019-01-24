class Player

  attr_reader :name 
  attr_accessor :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def attack(player)
    player.take_damage(10) 
  end

  def take_damage(amount)
    @health -=amount
  end
end