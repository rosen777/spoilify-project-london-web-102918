class Investment < ApplicationRecord

  # stocks = StockQuote::Stock.raw_quote("aapl,tsla")
  # the above puts it in JSON format
  #
  # StockQuote::Stock.company('aapl').website
  # if you keep it in the gem output format you can call each one on it

  belongs_to :purchase
  has_many :user_investments
  has_many :users, through: :user_investments

  def self.biggest_investment
    if Investment.all.select {|i| i.sector == UserInvestment.last.investment.sector }
    i = Investment.all.map{|i| [i.name[0..25], i.price]}[0..5]
      result = []
      result = i
    end
  end

  def self.investment_energy
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Energy"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr = []
    top10_ordered.map do |s|
    arr = [ s["marketCap"], s["companyName"] ]
    end
  end

  def self.investment_energy2
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Energy"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr = []
    top10_ordered.map do |s|
    arr = [ s["marketCap"], s["companyName"], s["latestPrice"] ]
    end
  end

  def self.investment_energy3
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Energy"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr = []
    top10_ordered.map do |s|
    arr = [s["companyName"], s["latestPrice"] ]
    end
  end

  def self.investment_health_care
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Health%20Care"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr= []
  top10_ordered.map do |s| s["marketCap"]
    arr = [ s["marketCap"], s["companyName"] ]
  end
end

  def self.investment_health_care2
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Health%20Care"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr= []
  top10_ordered.map do |s| s["marketCap"]
    arr = [ s["marketCap"], s["companyName"], s["latestPrice"] ]
  end
end

def self.investment_health_care3
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Health%20Care"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr= []
  top10_ordered.map do |s| s["marketCap"]
    arr = [ s["companyName"], s["latestPrice"] ]
  end
end

def self.investment_technology
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Technology"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil  }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr= []
  top10_ordered.map do |s| s["marketCap"]
  arr = [ s['marketCap'], s['companyName'] ]
end
end

def self.investment_technology2
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Technology"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil  }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr= []
  top10_ordered.map do |s| s["marketCap"]
  arr = [ s["marketCap"], s["companyName"], s["latestPrice"] ]
end
end

def self.investment_technology3
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Technology"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil  }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr= []
  top10_ordered.map do |s| s["marketCap"]
  arr = [ s["companyName"], s["latestPrice"] ]
end
end

def self.investment_consumer_defensive
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer%20Defensive"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr= []
  top10_ordered.map do |s| s["marketCap"]
  arr = [ s['marketCap'], s['companyName'] ]
end
end

def self.investment_consumer_defensive2
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer%20Defensive"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr= []
  top10_ordered.map do |s| s["marketCap"]
  arr = [ s["marketCap"], s["companyName"], s["latestPrice"] ]
end
end

def self.investment_consumer_defensive3
  url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer%20Defensive"
  response_string = RestClient.get(url)
  response_hash = JSON.parse(response_string)
  array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
  sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
  top10_ordered = sorted_by_cap.reverse[0..4]
  arr= []
  top10_ordered.map do |s| s["marketCap"]
  arr = [ s["companyName"], s["latestPrice"] ]
end
end

def self.investment_consumer_cyclical
    url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer%20Cyclical"
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
    array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
    sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
    top10_ordered = sorted_by_cap.reverse[0..4]
    arr= []
    top10_ordered.map do |s| s["marketCap"]
    arr = [ s['marketCap'], s['companyName'] ]
end
end

def self.investment_consumer_cyclical2
    url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer%20Cyclical"
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
    array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
    sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
    top10_ordered = sorted_by_cap.reverse[0..4]
    arr= []
    top10_ordered.map do |s| s["marketCap"]
    arr = [ s["marketCap"], s["companyName"], s["latestPrice"] ]
end
end

def self.investment_consumer_cyclical3
    url = "https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer%20Cyclical"
    response_string = RestClient.get(url)
    response_hash = JSON.parse(response_string)
    array_of_hashes = response_hash.select { |m| m["marketCap"] != nil }
    sorted_by_cap = array_of_hashes.sort_by {|t| t["marketCap"]}
    top10_ordered = sorted_by_cap.reverse[0..4]
    arr= []
    top10_ordered.map do |s| s["marketCap"]
    arr = [ s["companyName"], s["latestPrice"] ]
end
end



end
