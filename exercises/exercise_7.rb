require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Give me a Store Name: "

store_name = gets.chomp

test_store = Store.new(
  name: store_name
)

puts test_store.valid?
puts test_store.errors.full_messages
