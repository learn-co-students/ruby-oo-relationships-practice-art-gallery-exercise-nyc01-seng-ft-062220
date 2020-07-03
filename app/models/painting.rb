class Painting

  attr_reader :title, :price, :artist
attr_accessor :gallery
  @@all = []

  def initialize(title, price, artist, gallery)
   @artist=artist
    @title = title
    @price = price
    @gallery=gallery
    @@all << self
  end

def self.all 
  @@all 
end

def  self.total_price
  total=all.map {|painting| painting.price}
  total.sum
end

end
