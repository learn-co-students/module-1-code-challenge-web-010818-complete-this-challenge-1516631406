class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches

    self.all.find {|restaurant| restaurant.name == name}

  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select {|review| review.restaurant == self}
  end


  def customers
    # should return all of the customers who have written reviews of that restaurant.

    self.reviews.map {|review| review.customer}

  end

end
