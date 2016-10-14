<<<<<<< HEAD


class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
=======
require_relative 'player'

class Game

attr_reader :current_turn

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
   @players =[player_1, player_2]
   @current_turn = player_1
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

<<<<<<< HEAD
  def attack(player)
    player.take_damage
  end

=======
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

<<<<<<< HEAD
  def opponent
    opponent_of(@current_turn)
  end


  def opponent_of(the_player)
    players.select {|player| player != the_player }.first
  end

  private

  attr_reader :players

=======
  def current_opponent
    opponent_of(@current_turn)
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private
  attr_reader :players

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

  def losing_players
   players.select { |player| player.hit_points <= 0 }
  end

>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
end
