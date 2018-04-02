require 'rspec'
require 'deck'

describe '#Deck' do
  subject(:deck) { Deck.new }
  describe '#initialize' do
    it "initializes a shuffled deck of 52 cards" do
      expect(deck.count).to eq(52)
    end

    describe '#take' do
      # let(:deck_size_before_take) { deck.count }

      it "returns an array of the specified number of cards" do
        expect(deck.take(5).length).to be(5)
      end
      it "reduces the deck size by the number of cards taken" do
        deck_count = deck.count
        deck.take(5)
        expect(deck.count).to eq(deck_count - 5)
      end
    end
  end
end
