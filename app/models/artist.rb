class Artist

  attr_reader :name, :years_experience


  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def Artist.all
    #Returns an array of all the artists
    @@all
  end

  def paintings
    #Returns an array all the paintings by an artist
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    #Returns an array of all the galleries that an artist has paintings in
    Painting.all.map {|painting| painting.gallery if painting.artist == self}.compact
  end

  def cities
    #Return an array of all cities that an artist has paintings in
    Painting.all.map {|painting| painting.gallery.city if painting.artist == self}.compact
  end

  def Artist.total_experience
    #Returns an integer that is the total years of experience of all artists
    Artist.all.map {|artist| artist.years_experience }.sum
  end


  def Artist.most_prolific
    #Returns an instance of the artist with the highest amount of paintings per year of experience.
    self.all.max_by do |artist|
      puts artist.paintings.length / artist.years_experience # copied from solution, learned max_by. paintings_length uses a method we already had. 
    end
  end

  def create_painting(title, price, gallery)
    #Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    Painting.new(title, self, price, gallery)
  end


end
