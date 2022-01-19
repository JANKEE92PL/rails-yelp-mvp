puts "cleaning up database"
Restaurant.destroy_all
puts "database is clean"

puts "Creating Restaurants"
100.times do
  Restaurant.create(
    name: FAKER::Restaurant.name,
    address: FAKER::Address.street_address,
    rating: rand(1..5)
  )
end