require "pry"

class Artist

  attr_accessor :years_experience
  attr_reader :name
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
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    self.paintings.map {|p| p.gallery}
  end

  def cities
    self.galleries.map {|g| g.city}
  end

  def self.total_experience
    total = self.all.map {|a| a.years_experience}
    total.sum(0.0)
  end

  def ppy
    self.years_experience.to_f / self.paintings.count.to_f
  end

  def self.most_prolific
    the_ppy = self.all.map {|a| a.ppy}
     
    self.all.select {|a| a.ppy == the_ppy.min}
  end

  def create_painting (title, price, gallery)
    Painting.new(title, price, self, gallery)
  end



end
