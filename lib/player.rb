class Player

<<<<<<< HEAD
  DEFAULT_HP = 50

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def take_damage
    @hit_points -= 10
  end
  
=======
 DEFAULT_HIT_POINTS = 60

attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

 def receive_damage
  @hit_points -= 10
 end


>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
end
