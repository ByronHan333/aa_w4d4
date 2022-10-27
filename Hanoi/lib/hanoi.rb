class Hanoi
    attr_accessor :tower1, :tower2, :tower3, :towers
    def initialize
        @tower1 = [7,6,5,4,3,2,1]
        @tower2 = []
        @tower3 = []
        @towers = [@tower1, @tower2, @tower3]
    end

    def user_input
        print "Enter input: "
        input = gets.chomp.split(" ").map(&:to_i)
    end

    def won?
        tower1 == [] && tower2 == [] && tower3 == [7, 6, 5, 4, 3, 2, 1]
    end

    def move(input)
        # [start_tower, end_tower]
        i, j = input
        start_tower = towers[i - 1]
        end_tower = towers[j - 1]
        # nothing in start tower -> do nothing
        if start_tower.empty?
            puts "invalid move!"
            return
        end
        # nothing in end tower -> push to end tower
        disk = start_tower.pop
        if end_tower.empty?
            end_tower.push(disk)
            return
        end
        # otherwise -> compare end_tower.last
        if disk < end_tower.last
            end_tower.push(disk)
            return
        else
            start_tower.push(disk)
            puts "invalid move!"
            return
        end
    end

    def render
        towers.each { |tower| print "#{tower}\n" }
    end

    def play
        render
        until won?
            input = user_input
            move(input)
            render
        end
        puts "YOU WON!!"
    end
end
h = Hanoi.new
h.play

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
