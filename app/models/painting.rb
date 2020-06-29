class Painting

  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    self.class.all << self
  end

  def self.all
    @@all
  end

end

# Painting.all

# Returns an array of all the paintings
# Painting.total_price

# Returns an integer that is the total price of all paintings
