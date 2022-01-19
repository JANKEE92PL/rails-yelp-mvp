puts "cleaning up database"
Restaurant.destroy_all
puts "database is clean"

puts "Creating Restaurants"
100.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    rating: rand(1..5)
  )
end
puts "Finished Creating Restaurants"