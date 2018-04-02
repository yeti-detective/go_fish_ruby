# Card class

class Card
  SUITS = [
    :clubs,
    :diamonds,
    :hearts,
    :spades
  ]

  VALUES = [
    :deuce,
    :three,
    :four,
    :five,
    :six,
    :seven,
    :eight,
    :nine,
    :ten,
    :jack,
    :queen,
    :king,
    :ace
  ]
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end
