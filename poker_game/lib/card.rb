class Card
  SUITS = { 0 => "♤",
            1 => "♡",
            2 => "♢",
            3 => "♧"}

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value #=> 1-13 1 == Ace 11,12,13 Jack Queen King
    @suit = suit
  end

  def to_s
    value.to_s + SUITS[self.suit]
  end

  def inspect
    value.to_s + SUITS[self.suit]
  end

end
