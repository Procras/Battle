require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions
  STARTING_HIT_POINTS = 60

  get '/' do
    erb :index
  end

  post '/names' do
    $Player1 = Player.new(params[:player_1_name])
    $Player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $Player1.name
    @player_2_name = $Player2.name
    @player_1_hp = STARTING_HIT_POINTS
    @player_2_hp = STARTING_HIT_POINTS
    erb :play
  end

  get '/attack' do
    @player_1_name = $Player1.name
    @player_2_name = $Player2.name
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
