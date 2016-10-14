<<<<<<< HEAD
#require 'spec_helper'

describe Player do
  subject(:dave) {described_class.new('Dave')}
  let(:mittens) {described_class.new('Mittens')}


  describe 'intialize' do

    it 'has a name' do
      expect(dave.name).to eq 'Dave'
    end

    it 'has a HP score' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HP
    end

  end

  describe '#take_damage' do
    it 'reduces the oponents score by 10' do
      expect{mittens.take_damage}.to change{mittens.hit_points}.by(-10)
    end

=======
require 'player'

describe Player do

subject(:dave)    {described_class.new('Dave')   }
subject(:mittens) {described_class.new('Mittens')}

describe '#name' do
  it 'returns its name' do
    expect(dave.name).to eq 'Dave'
   end
  end

  describe '#hit_points' do
   it 'starts with default hit points' do
    expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
   end
  end

  describe '#receive_damage' do
    it 'deals damage to player' do
      expect { dave.receive_damage }.to change { dave.hit_points }.by(-10)
    end
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
  end

end
