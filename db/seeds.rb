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

# Purchases images
# Catellan Golden Toilet
# https://i.ytimg.com/vi/IWGj8CvH82E/maxresdefault.jpg
# £2,527,872
# Balenciaga gym shoes
# https://assets.vogue.com/photos/5a3ae4b02d08ab213919613c/master/pass/00-promo-toe-shoes.jpg
# £595
# Montegrappa Chaos Golden
# https://whichwatch.org/wp-content/uploads/2015/12/Montegrappa-Chaos-Gold-Watch.jpg
# £52,985
# New Private Jet
# http://3.bp.blogspot.com/-gudqlEhcOp4/UOVKp_FH1YI/AAAAAAAAAy8/uRJTEllJ-Gk/s640/private-jet-interiors.jpg
# £27,000,000

toilet = Purchase.create(name: "Catellan Golden Toilet", price: 2527872, country: "Kuwait", imgsrc: "https://i.ytimg.com/vi/IWGj8CvH82E/maxresdefault.jpg")
shoes = Purchase.create(name: "Balenciaga gym shoes", price: 595, country: "Spain", imgsrc: "https://assets.vogue.com/photos/5a3ae4b02d08ab213919613c/master/pass/00-promo-toe-shoes.jpg")
watch = Purchase.create(name: "Montegrappa Chaos Golden", price: 52985, country: "Uzbekistan", imgsrc: "https://whichwatch.org/wp-content/uploads/2015/12/Montegrappa-Chaos-Gold-Watch.jpg")
jet = Purchase.create(name: "Custom Boeing 747-8I", price: 27000000, country: "USA", imgsrc: "http://3.bp.blogspot.com/-gudqlEhcOp4/UOVKp_FH1YI/AAAAAAAAAy8/uRJTEllJ-Gk/s640/private-jet-interiors.jpg")
