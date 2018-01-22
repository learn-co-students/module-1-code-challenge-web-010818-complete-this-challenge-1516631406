class Restaurant

  attr_reader :name


  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    myReviews = Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}
  end


end
