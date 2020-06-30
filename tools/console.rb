require_relative '../config/environment.rb'


gallery1 = Gallery.new("Arch", "NYC")
gallery2 = Gallery.new("MOMA", "NYC")
gallery3= Gallery.new("Test", "Chicago")

artist1 = Artist.new("Bob", 30)
artist2 = Artist.new("Sam", 12)
artist3 = Artist.new("Joe", 1)

artist1.create_painting("Trees", 50, gallery1)
artist1.create_painting("Swans", 300, gallery1)
artist1.create_painting("Sea", 400, gallery3)
artist1.create_painting("Road", 99, gallery2)
artist1.create_painting("Forest", 350, gallery1)
artist1.create_painting("Mountains", 150, gallery3)

artist2.create_painting("Dogs", 500, gallery1)
artist2.create_painting("Cats", 400, gallery2)
artist2.create_painting("Mice", 199, gallery1)
artist2.create_painting("Lions", 220, gallery1)

binding.pry

puts "Bob Ross rules."
