def stock_picker(array)
  # buy price, sell day, profit, day index
  # format: price, day 
  buy = [array[0], 0]
  sell = [0, 0]
  profit = [0]
  array.each_with_index do |buy_price, day|
    # buy = [price, day] if sell[0] != 0 && price < buy[0]
    # p buy
    array[0...array.length()].each_with_index do |sell_price, sell_day|
      if sell_day > day && sell_price - buy_price > profit[0]
        buy = [buy_price, day]
        sell = [sell_price, sell_day]
        profit[0] = sell_price - buy_price
      end
    end
       
  end
  "Buy for $#{buy[0]} on #{buy[1]}. Sell for $#{sell[0]} on #{sell[1]}, for profit of $#{profit[0]}"
end




p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,3,6,9,1,8,6,1,1])
p stock_picker([5,7,9,91,8,6,1,5,91])
p stock_picker([900,7,3,21,8,6,1,5,90])
p stock_picker([56,700,3,21,8,6,1,5,900])