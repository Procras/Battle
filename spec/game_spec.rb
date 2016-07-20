require './lib/game.rb'

describe Game do
  subject(:game) { described_class.new } 
  subject(:player_1) {Player.new("player 1")}
  subject(:player_2) {Player.new("player 2")}

  describe '#attack' do
    it 'damages player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
