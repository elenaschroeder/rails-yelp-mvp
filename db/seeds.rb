puts "clearing it"
Restaurant.destroy_all
puts "making seeds"
20.times do
  resto = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number:Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
    puts "Created #{resto.name}"
end
puts "Created #{Restaurant.count} restaurants"
