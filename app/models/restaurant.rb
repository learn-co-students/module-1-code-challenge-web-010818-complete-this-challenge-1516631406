class Restaurant
  attr_accessor :name :customer
	@@all = []
  def initialize(name)
    @name = name
		@@all << self
		@reviews = []
  end

# returns an array of all restaurants
def self.all
		@@all
end

# given a string of restaurant name, returns the first restaurant that matches
def self.find_by_name(name)
	self.all.find{|r| r.name = self}
end


# returns an array of all reviews for that restaurant
def reviews
	@reviews
end


# should return all of the customers who have written reviews of that restaurant.
def customers
	self.all.select{|r| r.cusomter}
end






end
