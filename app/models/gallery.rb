class Gallery

  attr_reader :name, :city
  
  @@all = []
  
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select{|id| id.gallery == self}
  end
  
  def artists
    paintings.map {|id| id.artist}
  end

  def artist_name
    artists.map{|id| id.name}.uniq
  end

  def most_expensive_painting
    paintings.max_by {|id| id.price}
  end

end
