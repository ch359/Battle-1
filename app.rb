require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    # 'Testing infrastructure working!'
    erb :index
  end

  run! if app_file == $0
end
