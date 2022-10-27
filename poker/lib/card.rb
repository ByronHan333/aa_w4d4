class Card
  attr_reader :symbol, :value
  def initialize(symbol, value)
    @symbol = symbol
    @value = value
  end

  def inspect
    { "symbol" => symbol, "value" => value }.inspect
  end
end
