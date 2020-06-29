require_relative '../config/environment.rb'


a1 = Artist.new("GD", 10)
a2 = Artist.new("Lebron", 8)
a3 = Artist.new("Young", 5)
a4 = Artist.new("Jay-Z", 15)
a5 = Artist.new("Sakura", 30)

g1 = Gallery.new("National Art Gallery of Albania", "Albania")
g2 = Gallery.new("Statens Museum for Kunst", "Copenhagen, Denmark")
g3 = Gallery.new("Hungarian National Gallery", "Budapest, Hungary")
g4 = Gallery.new("National Gallery of Ireland", "Dublin, Ireland")

a1.create_painting("Say Goodbye", 10000, g1)
a1.create_painting("Where", 3000, g1)
a1.create_painting("Huws", 4000, g2)
a1.create_painting("Flower", 60000, g3)
a2.create_painting("9999", 999999, g3)
a2.create_painting("One", 150, g3)
a2.create_painting("Nine", 9, g2)
a3.create_painting("Iphone", 150000, g4)
a3.create_painting("Dragon", 9000, g4)
a3.create_painting("Hola", 2000000000, g4)
a4.create_painting("Peso", 1, g2)
a4.create_painting("Fire", 2000, g2)
a4.create_painting("Jayyyu", 1, g1)
a5.create_painting("Sun", 299000000, g1)
a5.create_painting("Moon", 200, g1)
a5.create_painting("Sun", 299000000, g4)
a5.create_painting("Night", 50000, g3)

binding.pry

puts "Bob Ross rules."
