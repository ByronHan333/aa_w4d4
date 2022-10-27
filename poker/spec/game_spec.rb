require 'rspec'
require 'game'

describe Game do
    let (:player1) { double("player", name: "Tom", coins: 100) }
    let (:player2) { double("player", name: "Jack", coins: 100) }
    subject (:game) { Game.new(player1, player2) }

    describe "#initialize" do
        it "should set instance variables" do
            expect(game.player1).to be(player1)
            expect(game.player2).to be(player2)
            expect(game.current).to be(player1)
            expect(game.deck.length).to eq(52)
        end
    end

    describe "#end?" do
        let (:player3) { double("player", name: "Jack", coins: 100) }
        let (:game3) { Game.new(player1, player3) }
        it "should return false when both players have > 0 coins" do
            p player1.coins == 0
            p player3.coins == 0
            expect(game3.end?).to be false
        end
        let (:player2) { double("player", name: "Jack", coins: 0) }
        let (:game2) { Game.new(player1, player2) }
        it "should return true when either player has 0 coins" do
            expect(game2.end?).to be true
        end
    end

    describe "#play" do
        it "should call play_one_round" do
            expect(game.play).to receive(:play_one_round)
        end
    end
end