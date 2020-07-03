require_relative '../config/environment.rb'



gallery1=Gallery.new("Museum", "NY")
gallery2=Gallery.new("Art", "NY")
gallery3=Gallery.new("Wow", "Brooklyn")

artist1=Artist.new("John", 1)
artist2=Artist.new("Bob", 1)
artist3=Artist.new("Eve", 1)

painting1=Painting.new("title1", 50, artist1, gallery1)
painting2=Painting.new("title2", 10, artist2, gallery2)
painting3=Painting.new("title3", 70, artist2, gallery2)
painting3=Painting.new("title3", 70, artist3, gallery2)
binding.pry

puts "Bob Ross rules."
