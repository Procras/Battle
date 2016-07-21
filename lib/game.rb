require_relative 'player'
class Game
attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = turn
  end

  def attack(opponent)
    opponent.attacked
  end

  def turn
    if @turn = player1
      @turn = player2
    else
      @turn = player1
    end


end
