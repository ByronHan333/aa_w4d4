require "rspec"
require "card"

describe Card do
  subject (:card) {Card.new(:h, 10)}
  describe "#initialize" do
    it "should set instance variables" do
      expect(card.symbol).to be(:h)
      expect(card.value).to eq(10)
    end
  end

  describe "#symbol" do
    it "should return symbol" do
      expect(card.symbol).to be(:h)
    end
  end

  describe "#value" do
    it "should return value" do
      expect(card.value).to eq(10)
    end
  end
end
