class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, artist, price, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def Painting.all
    @@all
  end

  def Painting.total_price
    #Returns an integer that is the total price of all paintings
    Painting.all.map {|painting| painting.price}.sum
  end

end
