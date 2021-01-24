10.times do
  restaurant = Restaurant.new(
    name:    Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category:  ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  restaurant.save!
end
