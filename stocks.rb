def stock_picker(prices)
  best_days = [0, 0]
  profit = 999
  i = 0
  j = 0

  while (i < prices.length)
    j = i + 1
    while (j < prices.length)
      if (prices[i] - prices[j]) < profit
        best_days[0] = i
        best_days[1] = j
        profit = prices[i] - prices[j]
      end
      j = j + 1
    end
    i = i + 1
  end
  puts "The best day to buy is day #{prices.index(i)} at $#{best_days[0]} and the best day to sell is day #{prices.index(j)} at $#{best_days[1]} for a profit of $#{profit.abs}."
end


stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([71,21,62,2,64,63,25,15,17,53,4])