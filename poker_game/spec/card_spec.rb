require 'card'

describe Card do
  let(:card) { Card.new(2,2) }

  describe "#initialize" do

    it "should set a value" do
      expect(card.value).to eq(2)
    end

    it "should set a suit" do
      expect(card.suit).to eq(2)

    end

  end

  describe "#to_s" do

    it "should should return a string" do
      expect(card.to_s.class).to eq(String)
    end

    it "should match the right symbol, value" do
      expect(card.to_s).to eq("2♢")
    end

  end


end
