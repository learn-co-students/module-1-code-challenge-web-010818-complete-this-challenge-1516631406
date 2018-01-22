class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    #takes restuaurant name, returns first match
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    #return array of all reviews for restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    #return all customers who have written reviews
    self.reviews.map do |review|
      review.customer
    end
  end



end
