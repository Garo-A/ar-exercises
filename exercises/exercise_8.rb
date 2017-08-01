require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 8"
puts "----------"

tester = @store1.employees.create(
  first_name: "password",
  last_name: "test",
  hourly_rate: 55
)

puts Employee.find_by(id: tester.id).password
