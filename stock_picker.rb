def stock_picker(stocks)
  max_profit = 0
  buy = 0
  sell = 0
  
  for i in (0..stocks.length - 1)
    for j in (i..stocks.length - 1) # Used i, to not go back in time
      profit = stocks[j] - stocks[i]
      if (profit > max_profit)
        max_profit = profit
        buy = i
        sell = j
      end
    end
  end

  [buy, sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10])