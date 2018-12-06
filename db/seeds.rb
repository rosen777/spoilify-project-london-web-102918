Investment.destroy_all
Purchase.destroy_all
Article.destroy_all

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

# Might be an idea to sample the countrys

toilet = Purchase.create(name: "Catellan Golden Toilet", price: 2527872, country: "Kuwait", imgsrc: "https://i.ytimg.com/vi/IWGj8CvH82E/maxresdefault.jpg")
shoes = Purchase.create(name: "Nike Air MAG BTTF Edition", price: 37654, country: "USA", imgsrc: "https://plugin-magazine.com/media/cache/upload/Photo/2015/10/22/air_mag_front_pair_v2_native_1600_biggalleryimage.jpg")
watch = Purchase.create(name: "Montegrappa Chaos Golden", price: 52985, country: "Uzbekistan", imgsrc: "https://whichwatch.org/wp-content/uploads/2015/12/Montegrappa-Chaos-Gold-Watch.jpg")
jet = Purchase.create(name: "Custom Boeing 747-8I", price: 27000000, country: "USA", imgsrc: "http://3.bp.blogspot.com/-gudqlEhcOp4/UOVKp_FH1YI/AAAAAAAAAy8/uRJTEllJ-Gk/s640/private-jet-interiors.jpg")
jetpack = Purchase.create(name: "Jetsuit by Gravity Industries", price: 340000, country: "UK", imgsrc: "https://static.highsnobiety.com/wp-content/uploads/2018/07/27210700/gravity-industries-jet-suit-001-480x320.jpg")

energyall = Investment.investment_energy2
health_careall = Investment.investment_health_care2
technologyall = Investment.investment_technology2
consumer_defensiveall = Investment.investment_consumer_defensive2
consumer_cyclicalall = Investment.investment_consumer_cyclical2

energystock0 = Investment.create(name: energyall[0][1][0..25], price: energyall[0][2], purchase: jet, sector: "energy")
energystock1 = Investment.create(name: energyall[1][1][0..25], price: energyall[1][2], purchase: jet, sector: "energy")
energystock2 = Investment.create(name: energyall[2][1][0..25], price: energyall[2][2], purchase: jet, sector: "energy")
energystock3 = Investment.create(name: energyall[3][1][0..25], price: energyall[3][2], purchase: jet, sector: "energy")
energystock4 = Investment.create(name: energyall[4][1][0..25], price: energyall[4][2], purchase: jet, sector: "energy")


health_carestock0 = Investment.create(name: health_careall[0][1][0..25], price: health_careall[0][2], purchase: toilet, sector: "healthcare")
health_carestock1 = Investment.create(name: health_careall[1][1][0..25], price: health_careall[1][2], purchase: toilet, sector: "healthcare")
health_carestock2 = Investment.create(name: health_careall[2][1][0..25], price: health_careall[2][2], purchase: toilet, sector: "healthcare")
health_carestock3 = Investment.create(name: health_careall[3][1][0..25], price: health_careall[3][2], purchase: toilet, sector: "healthcare")
health_carestock4 = Investment.create(name: health_careall[4][1][0..25], price: health_careall[4][2], purchase: toilet, sector: "healthcare")


technologystock0 = Investment.create(name: technologyall[0][1][0..25], price: technologyall[0][2], purchase: jetpack, sector: "technology")
technologystock1 = Investment.create(name: technologyall[1][1][0..25], price: technologyall[1][2], purchase: jetpack, sector: "technology")
technologystock2 = Investment.create(name: technologyall[2][1][0..25], price: technologyall[2][2], purchase: jetpack, sector: "technology")
technologystock3 = Investment.create(name: technologyall[3][1][0..25], price: technologyall[3][2], purchase: jetpack, sector: "technology")
technologystock4 = Investment.create(name: technologyall[4][1][0..25], price: technologyall[4][2], purchase: jetpack, sector: "technology")


consumer_defensivestock0 = Investment.create(name: consumer_defensiveall[0][1][0..25], price: consumer_defensiveall[0][2], purchase: shoes, sector: "consumerdefensive")
consumer_defensivestock1 = Investment.create(name: consumer_defensiveall[1][1][0..25], price: consumer_defensiveall[1][2], purchase: shoes, sector: "consumerdefensive")
consumer_defensivestock2 = Investment.create(name: consumer_defensiveall[2][1][0..25], price: consumer_defensiveall[2][2], purchase: shoes, sector: "consumerdefensive")
consumer_defensivestock3 = Investment.create(name: consumer_defensiveall[3][1][0..25], price: consumer_defensiveall[3][2], purchase: shoes, sector: "consumerdefensive")
consumer_defensivestock4 = Investment.create(name: consumer_defensiveall[4][1][0..25], price: consumer_defensiveall[4][2], purchase: shoes, sector: "consumerdefensive")


consumer_cyclicalstock0 = Investment.create(name: consumer_cyclicalall[0][1][0..25], price: consumer_cyclicalall[0][2], purchase: watch, sector: "consumercyclical")
consumer_cyclicalstock1 = Investment.create(name: consumer_cyclicalall[1][1][0..25], price: consumer_cyclicalall[1][2], purchase: watch, sector: "consumercyclical")
consumer_cyclicalstock2 = Investment.create(name: consumer_cyclicalall[2][1][0..25], price: consumer_cyclicalall[2][2], purchase: watch, sector: "consumercyclical")
consumer_cyclicalstock3 = Investment.create(name: consumer_cyclicalall[3][1][0..25], price: consumer_cyclicalall[3][2], purchase: watch, sector: "consumercyclical")
consumer_cyclicalstock4 = Investment.create(name: consumer_cyclicalall[4][1][0..25], price: consumer_cyclicalall[4][2], purchase: watch, sector: "consumercyclical")


# Article Genereation TIMMMMEEEEE!!!

ahead = Article.headlines
asum = Article.summary
aimg = Article.image_url

a1 = Article.create(headline: ahead[0], summary: asum[0], image_url: aimg[0])
a2 = Article.create(headline: ahead[1], summary: asum[1], image_url: aimg[1])
a3 = Article.create(headline: ahead[2], summary: asum[2], image_url: aimg[2])
a4 = Article.create(headline: ahead[3], summary: asum[3], image_url: aimg[3])
a5 = Article.create(headline: ahead[4], summary: asum[4], image_url: aimg[4])
