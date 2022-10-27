require 'rspec'
require 'hanoi'

describe Hanoi do
  subject {Hanoi.new}

  describe "#initialize" do
    it "should set tower 1 to full array" do
      expect(subject.tower1).to eq([7,6,5,4,3,2,1])
    end

    it "should set tower 2 to empty array" do
      expect(subject.tower2).to eq([])
    end

    it "should set tower 3 to empty array" do
      expect(subject.tower3).to eq([])
    end
  end

  describe "#move" do
    it "should accept an input" do
      expect {hanoi.move([1,3])}.to_not raise_error
    end

    it "should successfully move the disk" do
      hanoi.move([1,3])
      expect(hanoi.tower1).to eq([7,6,5,4,3,2])
      expect(hanoi.tower2).to eq([])
      expect(hanoi.tower3).to eq([1])
    end

    it "should not move the disk if invalid move" do
      hanoi.move([1,3])
      hanoi.move([1,3])
      expect(hanoi.tower1).to eq([7,6,5,4,3,2])
      expect(hanoi.tower2).to eq([])
      expect(hanoi.tower3).to eq([1])
    end
  end

  describe "#won?" do
    it "returns true when game is won" do
      hanoi.tower1 = []
      hanoi.tower2 = []
      hanoi.tower3 = [7,6,5,4,3,2,1]
      expect(hanoi.won?).to be true
    end

    it "returns false when game is not won" do
      hanoi.tower1 = [5]
      hanoi.tower2 = [6]
      hanoi.tower3 = [7,4,3,2,1]

      expect(hanoi.won?).to be false
    end
  end
end
