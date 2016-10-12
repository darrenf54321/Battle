class Player

  attr_reader :name, :hit_points

  STARTING_HITPOINTS = 60

  def initialize(name)
    @name = name
    @hit_points = STARTING_HITPOINTS
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end

end
