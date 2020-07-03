class Artist
@@all =[]
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

def self.all 
  @@all 
end
def paintings 
  Painting.all.select {|painting| painting.artist == self}
end

def galleries 
  gal=paintings.map {|painting| painting.gallery}
  gal.uniq
end

def cities 
city=galleries.map {|gallery| gallery.city}
city.uniq
end

def self.total_experience 
years=all.map {|exp| exp.years_experience.to_i}
years.sum
end

def self.most_prolific
p_per_year=all.map {|artist| artist.paintings.length / artist.years_experience}
max=p_per_year.max
all.select {|artist| artist.paintings.length / artist.years_experience == max}
end

def create_painting(title, price, gallery)
Painting.new(title, self, price, gallery)
end

end
