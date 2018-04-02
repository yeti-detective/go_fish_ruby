require_relative 'deck'

class Hand
  attr_reader :cards
  def initialize(cards = Deck.new.take(5))
    @cards = cards
    # @books = []
  end

  def book
    new_books = []
    cards.each do |card|
      value = card.value
      if cards.count { |cards| cards.value == value } == 4
        new_books << card
      end
    end
    new_books.each do |card|
      cards.delete(card)
    end
    new_books
  end

  def count
    cards.size
  end

  def give_up(value)
    give_up_cards = []
    cards.each do |card|
      give_up_cards << card if card.value == value
    end
  end


  def add_to_hand(card)
    self.cards << card
  end

  def go_fish(deck)
    self.cards += deck.take(1)
  end

  private
  attr_writer :cards

  def these(&prc)
    cards.each do |card|
      prc(card)
    end
  end

end
