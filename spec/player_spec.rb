require 'player'
describe 'Player' do
  subject(:player) { Player.new("Player1") }
  it 'has a name' do
    expect(player.name).to eq "Player1"
  end
end
