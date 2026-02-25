# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require "faker"

5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: [ "french", "italian", "japanese", "chinese", "belgian" ].sample
  )

  rand(1..5).times do
    restaurant.reviews.create(
      content: Faker::Lorem.paragraph,
      rating: rand(0..5)
    )
  end
end
