# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  name = Faker::Food.dish
  address = Faker::Address.street_address
  phone_number = Faker::PhoneNumber.phone_number
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  res = Restaurant.create(name:name, address:address, phone_number:phone_number, category:category)

  2.times do
    content = Faker::HitchhikersGuideToTheGalaxy.quote
    rating = rand(0..5)
    Review.create(content: content, rating: rating, restaurant_id: res.id)
  end
end



