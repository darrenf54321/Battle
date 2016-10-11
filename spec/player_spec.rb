require 'player'

describe Player do

  subject(:player_1) { described_class.new('Crispin') }

  it 'return the players name' do
    expect(player_1.name).to eq 'Crispin'
  end


end
