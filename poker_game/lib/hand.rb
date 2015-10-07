class Hand

  attr_accessor :cards

  def initialize(five_cards)
    @cards = Hash.new { |h,k| h[k] = [] }
    create_hand_hash(five_cards)
  end

  def pair?
    @cards.values.any? {|value| value.count == 2}
  end

  def triple?
    @cards.values.any? {|value| value.count == 3}
  end

  def two_pairs?
    count = 0
    @cards.values.each {|value| count += 1 if value.count == 2}
    count == 2
  end

  def create_hand_hash(five_cards)
    five_cards.each do |card|
      @cards[card.value] << card.suit
    end
  end

end
