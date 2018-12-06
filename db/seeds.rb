Investment.destroy_all
Purchase.destroy_all

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
energystock0 = Investment.create(name: energyall[0][1], price: energyall[0][2], purchase: jet, sector: "Energy")
energystock1 = Investment.create(name: energyall[1][1], price: energyall[1][2], purchase: jet, sector: "Energy")
energystock2 = Investment.create(name: energyall[2][1], price: energyall[2][2], purchase: jet, sector: "Energy")
energystock3 = Investment.create(name: energyall[3][1], price: energyall[3][2], purchase: jet, sector: "Energy")
energystock4 = Investment.create(name: energyall[4][1], price: energyall[4][2], purchase: jet, sector: "Energy")

# healthcarestock0 = Investment.create(name: top10_ordered_healthcare_name[0], price: top10_ordered_healthcare_price[0], purchase: toilet, sector: "Health Care")
# healthcarestock1 = Investment.create(name: top10_ordered_healthcare_name[1], price: top10_ordered_healthcare_price[1], purchase: toilet, sector: "Health Care")
# healthcarestock2 = Investment.create(name: top10_ordered_healthcare_name[2], price: top10_ordered_healthcare_price[2], purchase: toilet, sector: "Health Care")
# healthcarestock3 = Investment.create(name: top10_ordered_healthcare_name[3], price: top10_ordered_healthcare_price[3], purchase: toilet, sector: "Health Care")
# healthcarestock4 = Investment.create(name: top10_ordered_healthcare_name[4], price: top10_ordered_healthcare_price[4], purchase: toilet, sector: "Health Care")
#
# constaplesstock0 = Investment.create(name: top10_ordered_constaples_name[0], price: top10_ordered_constaples_price[0], purchase: shoes, sector: "Consumer Staples")
# constaplesstock1 = Investment.create(name: top10_ordered_constaples_name[1], price: top10_ordered_constaples_price[1], purchase: shoes, sector: "Consumer Staples")
# constaplesstock2 = Investment.create(name: top10_ordered_constaples_name[2], price: top10_ordered_constaples_price[2], purchase: shoes, sector: "Consumer Staples")
# constaplesstock3 = Investment.create(name: top10_ordered_constaples_name[3], price: top10_ordered_constaples_price[3], purchase: shoes, sector: "Consumer Staples")
# constaplesstock4 = Investment.create(name: top10_ordered_constaples_name[4], price: top10_ordered_constaples_price[4], purchase: shoes, sector: "Consumer Staples")
#
# condiscretstock0 = Investment.create(name: top10_ordered_condiscret_name[0], price: top10_ordered_condiscret_price[0], purchase: watch, sector: "Consumer Discretionary")
# condiscretstock1 = Investment.create(name: top10_ordered_condiscret_name[1], price: top10_ordered_condiscret_price[1], purchase: watch, sector: "Consumer Discretionary")
# condiscretstock2 = Investment.create(name: top10_ordered_condiscret_name[2], price: top10_ordered_condiscret_price[2], purchase: watch, sector: "Consumer Discretionary")
# condiscretstock3 = Investment.create(name: top10_ordered_condiscret_name[3], price: top10_ordered_condiscret_price[3], purchase: watch, sector: "Consumer Discretionary")
# condiscretstock4 = Investment.create(name: top10_ordered_condiscret_name[4], price: top10_ordered_condiscret_price[4], purchase: watch, sector: "Consumer Discretionary")
#
# technologystock0 = Investment.create(name: top10_ordered_technology_name[0], price: top10_ordered_technology_price[0], purchase: jetpack, sector: "Technology")
# technologystock1 = Investment.create(name: top10_ordered_technology_name[1], price: top10_ordered_technology_price[1], purchase: jetpack, sector: "Technology")
# technologystock2 = Investment.create(name: top10_ordered_technology_name[2], price: top10_ordered_technology_price[2], purchase: jetpack, sector: "Technology")
# technologystock3 = Investment.create(name: top10_ordered_technology_name[3], price: top10_ordered_technology_price[3], purchase: jetpack, sector: "Technology")
# technologystock4 = Investment.create(name: top10_ordered_technology_name[4], price: top10_ordered_technology_price[4], purchase: jetpack, sector: "Technology")
