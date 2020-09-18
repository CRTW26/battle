require_relative 'player.rb'

class Game 

 attr_reader :player_1, :player_2, :active, :player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player = [@player_1, @player_2]
    @active = @player[0]
  end 

  def attack 
    @player[1].hit
    switch
  end 

  def switch 
    @player.reverse!
    @active = @player[0]
  end 

end 

game = Game.new("Bob", "Lou")
game.switch