require 'deck'

describe Deck do

  describe "#initialize" do
    deck = Deck.new

    it "should initialize a new deck" do
      expect(deck.cards.class).to eq(Array)
    end

  end

end
