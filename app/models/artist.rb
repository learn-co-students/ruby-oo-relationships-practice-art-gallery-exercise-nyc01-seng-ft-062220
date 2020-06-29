class Artist

  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  def self.all
    @@all
  end

end


# Returns an array of all the artists
# Artist#paintings

# Returns an array all the paintings by an artist
# Artist#galleries

# Returns an array of all the galleries that an artist has paintings in
# Artist#cities

# Return an array of all cities that an artist has paintings in
# Artist.total_experience

# Returns an integer that is the total years of experience of all artists
# Artist.most_prolific

# Returns an instance of the artist with the highest amount of paintings per year of experience.
# Artist#create_painting

# Given the arguments of title, price and gallery, creates a new painting belonging to that artist