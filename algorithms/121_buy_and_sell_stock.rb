# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit, min_buying_price = 0, prices.first
  (1...prices.length).each do |index|
    max_profit = [prices[index] - min_buying_price, max_profit].max
    min_buying_price = [prices[index], min_buying_price].min
  end
  
  max_profit
end
