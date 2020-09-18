require 'player'

describe Player do 

  describe 'player is instantiated' do 
    
    let(:player) { Player.new('Jim') }

    it 'instance of Player has a name' do 
      expect(player.name).to eq 'Jim'
    end

    it 'begins with 100HP' do 
      expect(player.hp).to eq 100
    end 

  end 

end 