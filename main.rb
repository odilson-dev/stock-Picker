def stock_picker(arr)
    buy_day = 0
    sell_day = 0
    average = arr.sum.to_f / arr.size
    loop do
      random_buy_price = arr.sample() 
      until random_buy_price < average - (average / 2)
        random_buy_price = arr.sample
      end
      buy_day = arr.index(random_buy_price)
      
      random_sell_price = arr.sample() 
      until random_sell_price > average + (average / 2)
        random_sell_price = arr.sample
      end
      sell_day = arr.index(random_sell_price)
      
      break if buy_day < sell_day
    end
    [buy_day, sell_day]
  end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])