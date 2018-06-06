# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Review.destroy_all

puts "Computing data and adding to DB..."

restaurant_name = ["Casa de Campo", "Tunari", "Clementina", "Cantonata", "Burguerhaus",]
category = ["chinese", "italian", "japanese", "french", "belgian", "bolivian"]
phone_number = ["34521345", "34521334", "34371345", "34371345", "34527845"]

restaurants = []

10.times do
  restaurants << Restaurant.create!(name: restaurant_name.sample, address: "Cochabamba", category: category.sample, phone_number: phone_number.sample)
end

p restaurants

puts "Restaurants created"

rating = [0, 1, 2, 3, 4, 5]

10.times do
  review = Review.new(rating: rating.sample, content: "this is a review")
  review.content = "other content"
  review.restaurant = restaurants.sample
  review.save
end







