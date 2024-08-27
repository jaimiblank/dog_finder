# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Dogs.destroy_all
Dogs.create(name: "Max and Moritz", breed: "Beagle", age: 1, bio: "Here you find Max and Moritz, two one year old beagle puppy")
Dogs.create(name: "Alice", breed: "Akita", age: 4, bio: "Alive, the most playful pup you'll ever see!")
Dogs.create(name: "Sausege", breed: "Dackel", age: 2, bio: "Sausege a loyal friend with a wagging tail.")
Dogs.create(name: "Temper", breed: "Husky", age: 1, bio: "Say hello to Temper, a bundle of furry joy.")
Dogs.create(name: "Bill", breed: "Labrador", age: 3, bio: "Bill always ready for a game of fetch")
Dogs.create(name: "Luna", breed: "Pekingese", age: 2, bio: "Introducing Luna, the sweetest cuddle buddy.")
Dogs.create(name: "DMX", breed: "Pitbull", age: 3, bio: "This is DMX, a curious explorer with a big heart.")
Dogs.create(name: "Buddy", breed: "Pug", age: 6, bio: "Meet Buddy, a tail-wagging ball of energy.")
Dogs.create(name: "Stoner", breed: "Puli", age: 4, bio: "Here's Stoner, the gentle soul with puppy eyes.")
Dogs.create(name: "G", breed: "Shepherd", age: 5, bio: "This is Shepherd, the little pup with a big personality.")
