require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "secret"

  get '/' do
    erb :index
  end

  post '/play' do
    player1 = Player.new(params[:player_one])
    player2 = Player.new(params[:player_two])
    $game = Game.new(player1, player2)
    redirect "/play"
  end

  get '/play' do
    @player_one_name = $game.player_1.name
    @player_two_name = $game.player_2.name
    @player_one_health = $game.player_1.health
    @player_two_health = $game.player_2.health
    @debora = "debora"
    erb(:play)
  end

  get '/attacked' do
    @player_one = $game.player_1.name
    @player_two = $game.player_2.name
    $game.attack($game.player_2)
    erb(:attacked)
  end

  run! if app_file == $0
end
