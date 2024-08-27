puts "Dogs DB will be deleted..."


Dog.destroy_all
User.destroy_all


manfred = User.create!(bio: "Hey i am Manfred, a local Breeder for huskys, pitbulls and beagles", email: "manfred@somewhere.com", password: "123456")
su = User.create!(bio: "Hey i am Su, and i am looking for a dog", email: "su@somewhere.com", password: "654321")

puts "Creating of 2 Users in DB done..."

puts "Creating Dogs DB..."

beagle = Dog.create!(name: "Max and Moritz", breed: "Beagle", age: 1, bio: "Here you find Max and Moritz, two one year old beagle puppy", user: manfred)
akita = Dog.create!(name: "Alice", breed: "Akita", age: 4, bio: "Alive, the most playful pup you'll ever see!", user: manfred)
dackel = Dog.create!(name: "Sausege", breed: "Dackel", age: 2, bio: "Sausege a loyal friend with a wagging tail.", user: manfred)
husky = Dog.create!(name: "Temper", breed: "Husky", age: 1, bio: "Say hello to Temper, a bundle of furry joy.", user: manfred)
labrador = Dog.create!(name: "Bill", breed: "Labrador", age: 3, bio: "Bill always ready for a game of fetch", user: manfred)
pekingese = Dog.create!(name: "Luna", breed: "Pekingese", age: 2, bio: "Introducing Luna, the sweetest cuddle buddy.", user: su)
pitbull = Dog.create!(name: "DMX", breed: "Pitbull", age: 3, bio: "This is DMX, a curious explorer with a big heart.", user: su)
pug = Dog.create!(name: "Buddy", breed: "Pug", age: 6, bio: "Meet Buddy, a tail-wagging ball of energy.", user: su)
puli = Dog.create!(name: "Stoner", breed: "Puli", age: 4, bio: "Here's Stoner, the gentle soul with puppy eyes.", user: su)
shepherd = Dog.create!(name: "G", breed: "Shepherd", age: 5, bio: "This is Shepherd, the little pup with a big personality.", user: su)

beagle.images.attach(io: File.open(Rails.root.join('app/assets/images/beagle.jpg')),
filename: 'beagle.jpg')
akita.images.attach(io: File.open(Rails.root.join('app/assets/images/akita.jpg')),
filename: 'akita.jpg')
dackel.images.attach(io: File.open(Rails.root.join('app/assets/images/dackel.jpeg')),
filename: 'dackel.jpeg')
husky.images.attach(io: File.open(Rails.root.join('app/assets/images/husky.jpg')),
filename: 'husky.jpg')
labrador.images.attach(io: File.open(Rails.root.join('app/assets/images/labrador.jpg')),
filename: 'labrador.jpg')
pekingese.images.attach(io: File.open(Rails.root.join('app/assets/images/pekingese.jpeg')),
filename: 'pekingese.jpeg')
pitbull.images.attach(io: File.open(Rails.root.join('app/assets/images/pitbull.jpg')),
filename: 'pitbull.jpg')
pug.images.attach(io: File.open(Rails.root.join('app/assets/images/pug.png')),
filename: 'pug.png')
puli.images.attach(io: File.open(Rails.root.join('app/assets/images/puli.jpeg')),
filename: 'puli.jpeg')
shepherd.images.attach(io: File.open(Rails.root.join('app/assets/images/shepherd.jpg')),
filename: 'shepherd.jpg')

puts "Creating of 10 Dogs in DB done..."
