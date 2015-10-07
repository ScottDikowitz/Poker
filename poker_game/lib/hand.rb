class Hand

  def initialize(cards)

    @cards = Hash.new { |h,k| h[k] = [] }
    create_hand_hash(cards)
  end

  def pair?
    values = []
    self.cards.each do |card|
      values << card.value
    end
    values.each do |value|
      return true if values.count(value) > 1
    end
  end

  def create_hand_hash(cards)
    cards.each do |card|
      
    end

  end
end
