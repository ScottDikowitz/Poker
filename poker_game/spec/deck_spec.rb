require 'deck'

describe Deck do
  let(:deck) { Deck.new }

  describe "#initialize" do

    it "should initialize a new deck" do
      expect(deck.cards.class).to eq(Array)
    end

  end

  describe "#shuffle_cards" do

    it "should shuffle the cards" do
      unshuffeled = deck.cards.dup
      expect(deck.shuffle_cards).to_not eq(unshuffeled)
    end

  end

end
