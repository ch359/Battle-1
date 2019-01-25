require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    $test_subject_1 = Player.new(params[:player_one])
    $test_subject_2 = Player.new(params[:player_two])
    redirect "/play"
  end

  get '/play' do
    @player_one = $test_subject_1.name
    @player_two = $test_subject_2.name
    @player_one_health = $test_subject_1.health
    @player_two_health = $test_subject_2.health
    erb(:play)
  end

  get '/attacked' do
    @player_one = $test_subject_1.name
    @player_two = $test_subject_2.name
    # $test_subject_1.attack($test_subject_2)
    @game ||= Game.new
    @game.attack($test_subject_2)
    erb(:attacked)
  end

  run! if app_file == $0
end
