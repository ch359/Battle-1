require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:take_damage)
      game.attack(player_2)
    end
  end

  it 'should return player 1' do
    expect(game.player_1).to eq(player_1)
  end

  it 'should return player 2' do
    expect(game.player_2).to eq(player_2)
  end


end

