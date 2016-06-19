#iteration 1
def xget_max_profit(yesterdays_prices)
  prices = yesterdays_prices.dup
  yesterdays_prices.each_with_object([]) { |price, arr|
    prices.shift
    arr << prices.map { |p| p - price }
  }.flatten.max
end

#iteration 2
def get_max_profit(yesterdays_prices)
  if yesterdays_prices.length < 2
    raise IndexError, "Getting a profit requires at least 2 prices."
  end
  
  min_price = yesterdays_prices[0]
  max_profit = yesterdays_prices[1] - yesterdays_prices[0]
  yesterdays_prices.shift

  yesterdays_prices.each do |price|
    potential_profit = price - min_price
    min_price = [min_price, price].min
    max_profit = [max_profit, potential_profit].max
  end
  max_profit
end
require "pry"; binding.pry
