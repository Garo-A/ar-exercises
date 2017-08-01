require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


# * Surrey (annual_revenue of 224000, carries women's apparel only)
# * Whistler (annual_revenue of 1900000 carries men's apparel only)
# * Yaletown (annual_revenue of 430000 carries men's and women's apparel)

 Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
 )

 Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
 )

 Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
 )

 @mens_stores = Store.where(mens_apparel: true)

 @mens_stores.each do |store|
   puts "Store Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
 end
