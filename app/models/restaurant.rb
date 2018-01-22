class Restaurant
  @@all = []
  attr_accessor :name, :review , :customer , :restaurant

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.select do |obj|
      obj.name == name
    end
  end

  def reviews
    Review.all.select do |obj|
      obj.restaurant == self
    end
  end

  def customers
  me = Review.all.select do |obj|
      obj.restaurant == self
    end
    me.collect do |me_obj|
      me_obj.customer
    end
  end




end


# Restaurant.all
#   + returns an array of all restaurants
# + Restaurant.find_by_name(name)
#   + given a string of restaurant name, returns the first restaurant that matches
# + Restaurant#reviews
#   + returns an array of all reviews for that restaurant
# + Restaurant#customers
#   + should return all of the customers who have written reviews of that restaurant.
