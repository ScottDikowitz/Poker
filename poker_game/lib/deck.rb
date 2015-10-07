class Deck

  attr_accessor :cards
  def initialize
    @cards = create_deck
  end

  def create_deck
    deck = []
    (0..3).each do |suit|
      (1..13).each do |value|
        deck << Card.new(value, suit)
      end
    end
    deck
  end

  def shuffle_cards
    cards.shuffle!
  end

end
