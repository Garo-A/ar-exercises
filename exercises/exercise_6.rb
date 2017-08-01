require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


@store1.employees.create(
  first_name: "John",
  last_name: "Appleseed",
  hourly_rate: 100
)

@store1.employees.create(
  first_name: "Test First",
  last_name: "Test Last",
  hourly_rate: 40
)

@store1.employees.create(
  first_name: "Employee 3",
  last_name: "Employee 3Last",
  hourly_rate: 150
)

@store2.employees.create(
  first_name: "Store2 Employee",
  last_name: "Store2Last",
  hourly_rate: 200
)

puts Employee.count
