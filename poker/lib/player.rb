class Player
    attr_reader :name, :coins, :hand
    def initialize(name, coins)
        @name = name
        @coins = coins
        @hand = []
    end

    def bet(amount)
        @coins -= amount if @coins - amount >= 0
    end

    def add_coins(amount)
        @coins += amount
    end

    def accept_hand(cards)
        @hand += cards
    end

    def discard_hand
        @hand = []
    end
end