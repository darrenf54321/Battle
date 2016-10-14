require 'sinatra/base'
<<<<<<< HEAD
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  set :session_secret, "My session secret"

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    #@game.switch_turns
=======
require './lib/player'
require './lib/game'
require './lib/player_attack'

class Battle < Sinatra::Base

enable :sessions


  before do
    @game = Game.instance
  end

  get '/' do
     erb :index
  end

  post '/names' do
   player_1 = Player.new(params[:player_1_name])
   player_2 = Player.new(params[:player_2_name])
   @game = Game.create(player_1, player_2)
   redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/attack' do
    Attack.run(@game.current_opponent)
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
    erb :attack
  end

  post '/switch-turns' do
<<<<<<< HEAD
    $game.switch_turns
    redirect '/play'
=======
    @game.switch_turns
    redirect('/play')
  end

  get '/game-over' do
    erb :game_over
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
