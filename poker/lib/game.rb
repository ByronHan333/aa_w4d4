require_relative 'player'
require_relative 'card'
class Game
    attr_reader :player1, :player2, :current, :deck
    def self.generate_deck
        res = []
        symbols = [:c, :h, :s, :d]
        values = (2..14).to_a
        symbols.product(values).each do |s, v|
            res << Card.new(s, v)
        end
        res
    end

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @current = @player1
        @deck = Game.generate_deck
    end

    def game_end?
        player1.coins == 0 || player2.coins == 0
    end

    def play_one_round
        s = deck.sample(10)
        player1.accept_hand(s.take(5))
        player2.accept_hand(s.drop(5))       
        player1.bet(10)
        player2.bet(10)
        res = compare_hands(player1.hand, player2.hand)
        if res == 1
            # player1 win
            player1.add_coins(20)
            puts "#{player1.name} wins the round!"
        elsif res == -1
            # player2 win
            player2.add_coins(20)
            puts "#{player2.name} wins the round!"
        else
            # draw
            player1.add_coins(10)
            player2.add_coins(10)
            puts "Draw!"
        end
    end

    def play
        until game_end?
            play_one_round
            puts player1.coins
            puts player2.coins
        end
    end

    def compare_hands(hand1, hand2)
        hand1.sum { |c| c.value } <=> hand2.sum { |c| c.value }
    end
end

p1 = Player.new("Tom", 100)
p2 = Player.new("Jack", 100)
g = Game.new(p1, p2)
g.play