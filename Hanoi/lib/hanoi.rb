class Hanoi
    attr_accessor :tower1, :tower2, :tower3
    def initialize
        @tower1 = [7,6,5,4,3,2,1]
        @tower2 = []
        @tower3 = []
    end

    def user_input
        input = gets.chomp.split(" ").map(&:to_i)
    end

    def won?
        return true if tower1 = [] && tower2 = [] && tower3 = [7, 6, 5, 4, 3, 2, 1]
    end
end


# [7,6,5,4,3,2,1]
# []
# []

# [7,6,5,4,3,2]
# []
# [1]

# [7,6,5,4]
# []
# [3,2,1]

# [7,6,5,4,3,]
# []
# [2]


# []
# []
# [7,6,5,4,3,2,1]
