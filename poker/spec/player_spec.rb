require "rspec"
require "player"

describe Player do
  subject (:player) {Player.new("Tom", 100)}
  describe "#initialize" do
    it "should set instance variable" do
      expect(player.name).to eq("Tom")
      expect(player.coins).to eq(100)
      expect(player.hands).to eq([])
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

  end

  describe "#discard_hand" do

  end
end
