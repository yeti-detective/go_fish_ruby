require_relative 'hand'

class Player
  attr_reader :opponent, :books
  def initialize(name, deck)
    @name = name
    @deck = deck
    @hand = Hand.new
    @books = []
  end

  def versus(opponent)
    @opponent = opponent
  end

  def do_you_have(value)
    if hand.include?(value)
      hand.give_up_cards(value)
    else
      opponent.go_fish
    end
  end

  def go_fish
    hand.go_fish(deck)
  end

  def check_for_books
    self.books << hand.book
  end

  def score
    books.length
  end

end
