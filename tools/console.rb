require_relative '../config/environment.rb'
require "pry"


van_gogh = Artist.new("Van Gogh", 35)
monet = Artist.new("Monet", 30)
pollack = Artist.new("Pollack", 20)
matisse = Artist.new("Matisse", 50)

met = Gallery.new("The Met", "NYC")
louvre = Gallery.new("The Louvre", "Paris")
lacma = Gallery.new("LACMA", "LA")

starry = Painting.new("Starry Night", 100, van_gogh, met)
sp = Painting.new("Self Portrait", 50, van_gogh, louvre)
pond = Painting.new("Pond", 75, monet, louvre)
number_nine = Painting.new("9", 40, pollack, lacma)
leaves = Painting.new("Leaves", 60, matisse, met)




binding.pry

puts "Bob Ross rules."
