require "rspec"
require "player"

describe Player do
  subject (:player) {Player.new("Tom", 100)}
  describe "#initialize" do
    it "should set instance variable" do
      expect(player.name).to eq("Tom")
      expect(player.coins).to eq(100)
      expect(player.hand).to eq([])
    end
  end

  describe "#getters" do
    it "should get for name and coins variable" do
      expect(player.name).to eq("Tom")
      expect(player.coins).to eq(100)
    end
  end

  describe "#bet" do
    it "should accept an amount" do
      expect {player.bet(50)}.to_not raise_error
    end

    it "should decrement the amount of coins" do
      player.bet(50)
      expect(player.coins).to eq(50)
    end

    it "should not decrement if bet is greater than coins" do
      player.bet(150)
      expect(player.coins).to eq(100)
    end
  end

  describe "#accept_hand" do
    it "should take in an argument" do
      expect { player.accept_hand([1,2,3,4,5]) }.to_not raise_error
    end

    it "should append the input to the user's hand" do
      player.accept_hand([1,2,3])
      expect(player.hand).to eq([1,2,3])
    end
  end

  describe "#discard_hand" do
    it "should reset the user's hand to an empty array" do
      player.accept_hand([1,2,3])
      player.discard_hand
      expect(player.hand).to eq([])
    end
  end
end
