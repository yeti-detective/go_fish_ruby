require 'rspec'
require 'game'

deck = Deck.new
player1 = Player.new('Chris', deck)
player2 = Player.new('Alicia', deck)

describe Game do
  subject(:game) { Game.new(player1, player1, deck)}
  describe '#initialize' do
    it "sets the players" do
      expect(game.player1.name).to eq('Chris')
    end
  end
end
