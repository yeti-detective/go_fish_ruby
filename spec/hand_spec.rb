require 'rspec'
require 'hand'

describe '#Hand' do
  subject(:hand) { Hand.new }
  let(:deck) { Deck.new }
  describe '#initialize' do
    it 'initializes to 5 cards' do
      expect(hand.cards.length).to eq(5)
    end
  end
  describe '#count' do
    it 'returns the number of cards in the hand' do
      expect(hand.count).to eq(5)
    end
  end

  describe '#go_fish' do
    it 'increases the hand count by 1' do
      prev_count = hand.count
      hand.go_fish(deck)
      expect(hand.count).to eq(prev_count + 1)
    end
  end

  describe '#book' do
    it 'returns an empty hand if there aren\'t 4 matches' do
      expect(hand.book).to eq([])
    end
  end

  describe '#add_to_hand' do
    it 'puts a card in the hand' do
      prev_count = hand.count
      hand.add_to_hand(double(:suit => :fake_suit, :value => :fake_value))
      expect(hand.count).to eq(prev_count + 1)
    end
  end

end
