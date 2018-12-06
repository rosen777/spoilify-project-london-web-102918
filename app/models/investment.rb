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

  def self.investment_energy
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Energy"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  sorted_by_cap = response_hash.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..9]
  arr= []
  # top10_ordered.map {|s| s["marketCap"]}
  # top10_ordered.map {|s| s["companyName"]}
  top10_ordered.map do |s| s["marketCap"]
    arr =
     "#{s['marketCap']}, #{s['companyName']}"
  end
end

  def self.investment_health_care
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Health%20Care"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  sorted_by_cap = response_hash.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..9]
  arr= []
  # top10_ordered.map {|s| s["marketCap"]}
  # top10_ordered.map {|s| s["companyName"]}
  top10_ordered.map do |s| s["marketCap"]
    arr =
     "#{s['marketCap']}, #{s['companyName']}"
  end
end

def self.investment_energy
url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Energy"
response_string = RestClient.get(url)
response_hash = JSON.parse(response_string)
sorted_by_cap = response_hash.sort_by {|t| t["marketCap"]}
top10_ordered = sorted_by_cap.reverse[0..9]
arr= []
# top10_ordered.map {|s| s["marketCap"]}
# top10_ordered.map {|s| s["companyName"]}
top10_ordered.map do |s| s["marketCap"]
  arr =
   "#{s['marketCap']}, #{s['companyName']}"
end
end

def self.investment_technology
url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Technology"
response_string = RestClient.get(url)
response_hash = JSON.parse(response_string)
sorted_by_cap = response_hash.sort_by {|t| t["marketCap"]}
top10_ordered = sorted_by_cap.reverse[0..9]
arr= []
# top10_ordered.map {|s| s["marketCap"]}
# top10_ordered.map {|s| s["companyName"]}
top10_ordered.map do |s| s["marketCap"]
  arr =
   "#{s['marketCap']}, #{s['companyName']}"
end
end

def self.investment_consumer_defensive
url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer%20Defensive"
response_string = RestClient.get(url)
response_hash = JSON.parse(response_string)
sorted_by_cap = response_hash.sort_by {|t| t["marketCap"]}
top10_ordered = sorted_by_cap.reverse[0..9]
arr= []
# top10_ordered.map {|s| s["marketCap"]}
# top10_ordered.map {|s| s["companyName"]}
top10_ordered.map do |s| s["marketCap"]
  arr =
   "#{s['marketCap']}, #{s['companyName']}"
end
end

def self.investment_consumer_cyclical
url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer%20Cyclical"
response_string = RestClient.get(url)
response_hash = JSON.parse(response_string)
sorted_by_cap = response_hash.sort_by {|t| t["marketCap"]}
top10_ordered = sorted_by_cap.reverse[0..9]
arr= []
# top10_ordered.map {|s| s["marketCap"]}
# top10_ordered.map {|s| s["companyName"]}
top10_ordered.map do |s| s["marketCap"]
  arr =
   "#{s['marketCap']}, #{s['companyName']}"
end
end



end
