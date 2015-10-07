require 'hand'

describe Hand do
  let(:pair_hand) { [Card.new(1, 1), Card.new(2, 1), Card.new(1, 2), Card.new(5, 1), Card.new(6, 0)]  }
  describe "#pair?" do

    it "should return true if two values match" do
      hand = Hand.new(pair_hand)
      expect(hand.pair?).to eq (true)
    end

    it "should return false if there are no two matching value" do

    end

  end

end
