class CodingChallenge
  def max_profit(stock_prices)
    max_profit = 0
    i = 1

    stock_prices.each do |price|
      stock_prices[i..-1].each do |second_price|
        difference = second_price - price
        max_profit = difference if difference > max_profit
      end
      i+=1
    end
    max_profit
  end

end

stock = CodingChallenge.new
stock.max_profit([10, 15, 7, 5, 8, 11, 9])
# stock_prices_yesterday = [10, 15, 7, 5, 8, 11, 9]
# // return 6 (buying for $5 and selling for $11, making a $6 profit)
