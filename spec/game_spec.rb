<<<<<<< HEAD
#require 'spec_helper'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player_1 }
  let(:player2) { double :player_2 }

  describe "initialize" do
    it "accepts 2 player instances" do
      expect(game.player_1).to eq player1
    end
  end

  describe '#attack' do
    it 'calls take_damage on the opponent' do
      expect(player2).to receive(:take_damage)
      game.attack(player2)
=======

require 'game'
require 'player'

describe Game do
subject(:game)          {described_class.new(dave, mittens)}
subject(:finished_game) {described_class.new(dead_player, mittens)}
let (:dave)        {double(:player, hit_points: 60)}
let (:mittens)     {double(:player, hit_points: 60)}
let (:dead_player) {double(:player, hit_points: 0)}

  describe '#initialize' do
    it 'takes player names' do
      expect(game.player_1).to eq dave
      expect(game.player_2).to eq mittens
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
    end
  end

  describe '#current_turn' do
<<<<<<< HEAD
    it 'starts as player 1' do
      expect(game.current_turn).to eq player1
=======
    it 'starts as player_1' do
      expect(game.current_turn).to eq dave
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
<<<<<<< HEAD
      expect(game.current_turn).to eq player2
    end
  end
=======
      expect(game.current_turn).to eq mittens
    end
  end

  describe '#current_opponent' do
    it 'tells you the current opponent' do
      expect(game.current_opponent).to eq mittens
    end
  end

  describe '#game_over?' do
    it 'returns false if no-one is at 0hp' do
      expect(game.game_over?).to be false
    end
    it 'returns true if at least one player is at 0hp' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0hp' do
      expect(finished_game.loser).to eq dead_player
    end
  end

>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
end
