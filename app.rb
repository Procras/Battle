require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  STARTING_HIT_POINTS = 60

    get '/' do
     erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_1_hp = STARTING_HIT_POINTS
    @player_2_hp = STARTING_HIT_POINTS
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
