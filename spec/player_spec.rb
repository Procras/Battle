require 'player'

 describe Player do
   subject(:apple) {Player.new('apple')}
   subject(:banana) {Player.new('banana')}
 end

  describe '#name' do
    it 'returns the name' do
      expect(apple.name).to eq 'apple'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(apple.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages player' do
      expect(banana).to receive(:receive_damage)
      apple.attack(banana)
    end
  end

  describe '#receive_damage' do
    it 'takes HP away from player 2' do
      expect { banana.receive_damage }.to change { banana.hit_points }.by (-10)
    end
  end
