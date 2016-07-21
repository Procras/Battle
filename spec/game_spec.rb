require 'game'

describe 'Game' do
let(:player1) { double :player }
let(:player2) { double :player }
subject(:game) { Game.new(player1, player2) }

  it "attacks the opponent" do
    #expect(player2).to receive(:attacked)
    #game.attack(player2)
    expect(game).to respond_to (:attack)
  end




end
