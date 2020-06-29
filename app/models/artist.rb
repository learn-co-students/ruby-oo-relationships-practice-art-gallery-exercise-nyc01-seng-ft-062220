class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|id| id.artist == self}
  end

  def galleries
    paintings.map {|id| id.gallery}
  end

  def cities
    paintings.map {|id| id.gallery.city}.uniq
  end

  def self.most_prolific
    @@all.max_by{|id| id.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
  
end
