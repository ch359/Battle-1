require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect "/names"
  end

  get '/names' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb(:names)
  end

  run! if app_file == $0
end
