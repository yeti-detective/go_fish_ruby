require 'rspec'
require 'card'

rand = Random.new

describe '#Card' do
  subject(:card) { Card.new(Card::SUITS[rand(3)], Card::VALUES[rand(13)]) }
  describe '#initialize' do
    it 'initializes a card with a suit and a value' do
      expect(card.suit).to_not be(nil)
      expect(card.value).to_not be(nil)
    end
  end
end
