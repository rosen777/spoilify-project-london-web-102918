class Investment < ApplicationRecord

  # stocks = StockQuote::Stock.raw_quote("aapl,tsla")
  # the above puts it in JSON format
  #
  # StockQuote::Stock.company('aapl').website
  # if you keep it in the gem output format you can call each one on it

  def self.biggest_investment
    i = Investment.all.map{|i| [i.name, i.price]}
      result = []
      result = i
  end

end
