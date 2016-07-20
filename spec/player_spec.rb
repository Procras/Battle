require './lib/player.rb'

 describe Player do
   subject(:player_1) {Player.new("player 1")}
   subject(:player_2) {Player.new("player 2")}


  describe '#name' do
    it 'returns the name' do
      expect(player_1.name).to eq "player 1"
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'takes HP away from player 2' do
      expect { player_2.receive_damage }.to change { player_2.hit_points }.by (-10)
    end
  end
end
