require_relative 'player'
require_relative 'deck'



class Game
  def initialize(player1, player2, deck)
    @player1 = player1
    @player2 = player2
    @deck = deck
  end
end
