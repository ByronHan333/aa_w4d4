require 'set'

class Array
  def my_uniq
    set = Set.new
    self.each {|ele| set.add(ele)}
    set.to_a
  end

  def two_sum
    result = []
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        result << [i,j] if self[i]+self[j] == 0
      end
    end
    result
  end

  def my_transpose
    res = Array.new(self.length) {Array.new}
    (0...self.length).each do |i|
      (0...self.length).each do |j|
        res[i] << self[j][i] if self[j][i] 
      end
    end
    res
  end

  def stock_picker
    min_price = 9999
    max_profit = 0
    self.each do |price|
        if price < min_price
            min_price = price 
        elsif price - min_price > max_profit
            max_profit = price - min_price
        end
    end
    max_profit
  end
end
