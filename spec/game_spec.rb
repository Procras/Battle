require 'game'

describe 'Game' do
subject(:game) { Game.new }
let(:player1) { double :player }
let(:player2) { double :player }

  it "attacks the opponent" do
    expect(player2).to receive(:attacked)
    game.attack(player2)
  end

end
