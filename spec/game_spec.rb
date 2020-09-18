require 'game'

describe Game do 

  let(:game)     { Game.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe "players can #attack" do 
    it 'htis player' do 
      expect(player_2).to receive(:hit)
      game.attack(player_2)
    end 
  end   

  describe "turns" do 
    
    it 'begins as player_1\'s turn' do 
      expect(game.turn).to eq player_1
    end 

    it 'switches turn from player_1 to player_2' do
      game.switch
      expect(game.turn).to eq player_2
    end 
  
  end 

end 