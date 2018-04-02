require_relative 'hand'

class Player
  attr_reader :opponent
  def initialize(name, deck)
    @name = name
    @deck = deck
    @hand = Hand.new
  end

  def versus(opponent)
    @opponent = opponent
  end

  def do_you_have(card)
    
  end

end
