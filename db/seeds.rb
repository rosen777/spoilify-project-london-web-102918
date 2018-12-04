# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AAPL = Apple calls
# # To get a 52 week high
# StockQuote::Stock.raw_quote("AAPL")["AAPL"]["quote"]["week52High"]
#
# # To get a 52 week low
# StockQuote::Stock.raw_quote("AAPL")["AAPL"]["quote"]["week52Low"]
#
# # To get the latest price
# StockQuote::Stock.raw_quote("AAPL")["AAPL"]["quote"]["latestPrice"]

applecurrent = Investment.create(name: "applecurrent", price: StockQuote::Stock.raw_quote("AAPL")["AAPL"]["quote"]["latestPrice"], country: "US")
applelow = Investment.create(name: "applelow", price: StockQuote::Stock.raw_quote("AAPL")["AAPL"]["quote"]["week52Low"], country: "US")
applehigh = Investment.create(name: "appleh", price: StockQuote::Stock.raw_quote("AAPL")["AAPL"]["quote"]["week52High"], country: "US")
