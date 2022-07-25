# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "☕ Seeding users..."
user1 = User.create(username: "Kenny", password: "123")

puts "Seeding products..."
product1 = Product.create(name: "Optimum Nutrition Gold Standard® 100% Whey Protein", brand: "Optimum Nutrition", flavor: "Chocolate | 5lbs", price: 74.99 )