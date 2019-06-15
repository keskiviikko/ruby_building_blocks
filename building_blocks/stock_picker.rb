def stock_picker(prices)
    result = []
    max_profit = 0
  
    prices.each.with_index do |buy_price, buy_index|
        prices[buy_index+1..-1].each.with_index do |sell_price, sell_index|
        
        profit = sell_price - buy_price
  
            if profit > max_profit
                max_profit = profit
                result = [buy_index, sell_index + buy_index + 1]
            end
        end
    end
    result
end

# Try it here. Returns the best day to buy and to sell.
puts stock_picker([17,3,6,9,15,8,6,1,10])
