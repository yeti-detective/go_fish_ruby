# Deck class
require_relative 'card'

class Deck

  def self.full_deck
    suits = Card::SUITS
    values = Card::VALUES
    Array.new(52) { |i| Card.new(suits[i % 4], values[i % 13]) }.shuffle
  end

  def initialize(cards = Deck.full_deck)
    @cards = cards
  end

  def count
    cards.count
  end

  def take(n)
    taking = []
    n.times { taking << cards.shift }
    taking
  end

  private
  attr_accessor :cards

end
