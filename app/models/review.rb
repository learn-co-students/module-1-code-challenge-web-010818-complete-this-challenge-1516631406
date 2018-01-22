class Review

@@all = []

attr_accessor :customer, :restaurant

def initialize(customer, restaurant, content)
	@restaurant = restaurant
	@customer = cutomer
	@content = content
	@@all << self
end


# returns all of the reviews
def self.all
@@all
end

# returns the customer for that given review
def customer
	self.all.find{|r| r.}
end

#returns the restaurant for that given review
def restaurant
	self.all.find{|r| r.}
end












end
