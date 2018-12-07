class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :user_investments
  has_many :investments, through: :user_investments
 has_secure_password

 def self.headlines
 url = "https://api.iextrading.com/1.0/stock/market/news/last/5"
 response_string = RestClient.get(url)
 response_hash = JSON.parse(response_string)
 response_hash.map { |n| n["headline"]  }
 end

 def self.summary
 url = "https://api.iextrading.com/1.0/stock/market/news/last/5"
 response_string = RestClient.get(url)
 response_hash = JSON.parse(response_string)
 response_hash.map { |n| n["summary"]  }
 end

 def self.image_url
 url = "https://api.iextrading.com/1.0/stock/market/news/last/5"
 response_string = RestClient.get(url)
 response_hash = JSON.parse(response_string)
 response_hash.map { |n| n["image"]  }
 end


end
