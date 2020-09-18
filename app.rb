require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do 
    erb (:index)
  end

  post '/players' do 
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/game'
  end 

  get '/game' do 
    @game = $game
    erb(:game)
  end 

  get '/attack' do 
   @game = $game
   @game.attack(@game.player_2)
   @game.switch
   erb(:attack) 
  end 

end 