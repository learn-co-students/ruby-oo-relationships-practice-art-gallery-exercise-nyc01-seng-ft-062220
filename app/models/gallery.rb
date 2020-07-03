class Gallery

  attr_reader :name, :city
@@all=[]
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
 def self.all 
  @@all 
 end

 def paintings 
  Painting.all.select {|painting| painting.gallery == self}
 end

 def artists
  artists=paintings.map {|painting| painting.artist}
  artists.uniq
 end

 def artist_names
   artists.map {|artist| artist.name}
end

def most_expensive_painting 
all_prices = paintings.map {|painting| painting.price}
maximum_price = all_prices.max 
paintings.select {|painting| painting.price == maximum_price}
end 

end
