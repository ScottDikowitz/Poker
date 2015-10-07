require 'hand'

describe Hand do
  let(:default_hand) { [Card.new(1, 1), Card.new(2, 1), Card.new(7, 2), Card.new(5, 1), Card.new(6, 0)]  }
  let(:pair_hand) { [Card.new(1, 1), Card.new(2, 1), Card.new(1, 2), Card.new(5, 1), Card.new(6, 0)]  }
  let(:three_hand) { [Card.new(1, 1), Card.new(1, 0), Card.new(1, 2), Card.new(5, 1), Card.new(6, 0)]  }
  let(:two_p_hand) { [Card.new(1, 1), Card.new(5, 0), Card.new(1, 2), Card.new(5, 1), Card.new(6, 0)]  }

  describe "#pair?" do

    it "should return true if two values match" do
      hand = Hand.new(pair_hand)
      expect(hand.pair?).to eq(true)
    end

    it "should return false if there are no two matching value" do
      hand = Hand.new(default_hand)
      expect(hand.pair?).to eq(false)
    end

  end

  describe "#triple?" do

    it "should return true if three values match" do
      hand = Hand.new(three_hand)
      expect(hand.triple?).to eq(true)
    end

    it "should return false if there are no three matching value" do
      hand = Hand.new(pair_hand)
      expect(hand.triple?).to eq(false)
    end

  end

  describe "#two_pairs?" do

    it "should return true if two pairs" do
      hand = Hand.new(two_p_hand)
      expect(hand.two_pairs?).to eq(true)
    end

    it "should return false if only one pair" do
      hand = Hand.new(pair_hand)
      expect(hand.two_pairs?).to eq(false)
    end

    it "should return false if there are no pairs" do
      hand = Hand.new(three_hand)
      expect(hand.two_pairs?).to eq(false)
    end

  end

end
