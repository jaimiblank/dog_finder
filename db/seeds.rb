require "open-uri"

puts "Dogs DB will be deleted..."

Dog.destroy_all
User.destroy_all

manfred = User.create!(bio: "Hey I am Manfred, a local Breeder for huskys, pitbulls and beagles", email: "manfred@somewhere.com", password: "123456")
su = User.create!(bio: "Hey I am Su, and I am looking for a dog", email: "su@somewhere.com", password: "654321")

puts "Creating of 2 Users in DB done..."

puts "Creating Dogs DB..."

# def upload_image(file_path)
#   Cloudinary::Uploader.upload(Rails.root.join(file_path))
# end

newdog = Dog.new(
  name: "Max and Moritz",
  breed: "Beagle",
  age: 1,
  bio: "Here you find Max and Moritz, two one year old beagle puppies",
  user: manfred
)
image_file = URI.open("https://cdn.britannica.com/79/232779-050-6B0411D7/German-Shepherd-dog-Alsatian.jpg")
newdog.image.attach(io: image_file, filename: "beagle.jpg", content_type: "image/jpg")
newdog.save!
puts "Dog 1 created"
newdog = Dog.create!(
  name: "Alice",
  breed: "Akita",
  age: 4,
  bio: "Alive, the most playful pup you'll ever see!",
  user: manfred
)
image_file = URI.open("https://res.cloudinary.com/dqdmlrr95/image/upload/v1725014574/akita_kw4h7y.jpg")
newdog.image.attach(io: image_file, filename: "akita.jpg", content_type: "image/jpg")
newdog.save!
puts "Dog 2 created"
newdog = Dog.create!(
  name: "Sausege",
  breed: "Dackel",
  age: 2,
  bio: "Sausege, a loyal friend with a wagging tail.",
  user: manfred
)
image_file = URI.open("https://res.cloudinary.com/dqdmlrr95/image/upload/v1725014573/dackel_kalxa3.jpg")
newdog.image.attach(io: image_file, filename: "dackel.jpg", content_type: "image/jpg")
newdog.save!
puts "Dog 3 created"

newdog = Dog.create!(
  name: "Temper",
  breed: "Husky",
  age: 1,
  bio: "Say hello to Temper, a bundle of furry joy.",
  user: manfred
)
image_file = URI.open("https://res.cloudinary.com/dqdmlrr95/image/upload/v1725014573/husky_pt5vtr.jpg")
newdog.image.attach(io: image_file, filename: "husky.jpg", content_type: "image/jpg")
newdog.save!
puts "Dog 4 created"
newdog = Dog.create!(
  name: "Bill",
  breed: "Labrador",
  age: 3,
  bio: "Bill always ready for a game of fetch",
  user: manfred
)
image_file = URI.open("https://res.cloudinary.com/dqdmlrr95/image/upload/v1725014574/labrador_wcf54k.jpg")
newdog.image.attach(io: image_file, filename: "labrador.jpg", content_type: "image/jpg")
newdog.save!
puts "Dog 5 created"
newdog = Dog.create!(
  name: "Luna",
  breed: "Pekingese",
  age: 2,
  bio: "Introducing Luna, the sweetest cuddle buddy.",
  user: manfred
)
image_file = URI.open("https://res.cloudinary.com/dqdmlrr95/image/upload/v1725014575/pekingese_p5roim.jpg")
newdog.image.attach(io: image_file, filename: "pekingese.jpg", content_type: "image/jpg")
newdog.save!
puts "Dog 6 created"
newdog = Dog.create!(
  name: "DMX",
  breed: "Pitbull",
  age: 3,
  bio: "This is DMX, a curious explorer with a big heart.",
  user: su
)
image_file = URI.open("https://res.cloudinary.com/dqdmlrr95/image/upload/v1725014574/pitbull_x40t8r.jpg")
newdog.image.attach(io: image_file, filename: "pitbull.jpg", content_type: "image/jpg")
newdog.save!
puts "Dog 7 created"
newdog = Dog.create!(
  name: "Buddy",
  breed: "Pug",
  age: 6,
  bio: "Meet Buddy, a tail-wagging ball of energy.",
  user: manfred
)
image_file = URI.open("https://res.cloudinary.com/dqdmlrr95/image/upload/v1725014574/pug_w3q4br.png")
newdog.image.attach(io: image_file, filename: "pug.png", content_type: "image/png")
newdog.save!
puts "Dog 8 created"
newdog = Dog.create!(
  name: "Stoner",
  breed: "Puli",
  age: 4,
  bio: "Here's Stoner, the gentle soul with puppy eyes.",
  user: su
)
image_file = URI.open("https://res.cloudinary.com/dqdmlrr95/image/upload/v1725014578/puli_ukohur.jpg")
newdog.image.attach(io: image_file, filename: "puli.jpg", content_type: "image/jpg")
newdog.save!
puts "Dog 9 created"
newdog = Dog.create!(
  name: "G",
  breed: "Shepherd",
  age: 5,
  bio: "This is Shepherd, the little pup with a big personality.",
  user: manfred
)
image_file = URI.open("https://res.cloudinary.com/dqdmlrr95/image/upload/v1725014574/shepherd_f9ae7m.jpg")
newdog.image.attach(io: image_file, filename: "shepherd.jpg", content_type: "image/jpg")
newdog.save!
puts "Dog 10 created"

puts "Creating of 10 Dogs in DB done..."
