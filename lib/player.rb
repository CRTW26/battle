class Player

  attr_reader :name, :hp

  HP = 100
  ATTACK_DAMAGE = 10

  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end 

  def hit
    @hp -= 10
  end 

end 