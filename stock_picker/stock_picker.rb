# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(prices) 
  length = prices.length
  result = []
  highest_profit = 0

  prices.each_with_index do |val, idx| 
    (idx..length - 1).each do |n|
      # find highest difference comparing all possibilities
      profit = prices[n] - prices[idx]
      if profit > highest_profit 
        highest_profit = profit
        result[0] = idx
        result[1] = n
      end
    end
  end
  result
end


#this works/ but nested loops make it slow for large inputs (leetcode test case)

# make it faster using one loop 

def stock_picker_2(prices)
  length = prices.length
  highest_profit = 0
  min_buy = prices[0]

  (1..prices.length - 1).each do |i|

    if prices[i] < min_buy
      min_buy = prices[i]
    end

    if prices[i] - min_buy > highest_profit 
      highest_profit = prices[i] - min_buy
    end
    
  end

  highest_profit
end

stock_picker_2([7,1,5,3,6,4])
