require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  before do 
    @game = Game.instance
  end 

  get '/' do 
    erb (:index)
  end

  post '/players' do 
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/game'
  end 

  get '/game' do 
    erb(:game)
  end 

  get '/attack' do 
   @game.attack
   erb(:attack) 
  end 

end 