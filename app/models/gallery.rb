class Gallery

  attr_accessor :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def Gallery.all
    #Returns an array of all the galleries
    @@all
  end

  def paintings
    #Returns an array of all paintings in a gallery
    self.map {|painting| painting.painting}
  end

  def artists
    #Returns an array of all artists that have a painting in a gallery
    Painting.all.map {|painting| painting.artist if painting.gallery == self}.compact.uniq
  end

  def artist_names
    #Returns an array of the names of all artists that have a painting in a gallery
    Painting.all.map {|painting| painting.artist.name if painting.gallery == self}.compact.uniq
  end

  def most_expensive_painting
    #Returns an instance of the most expensive painting in a gallery
    hash = {}
    Painting.all.map {|painting| hash[painting] = painting.price if painting.gallery == self}
    hash.sort_by {|k,v| v}.last[0]
  end

end
