class Review


  @@all = []


  attr_accessor :customer, :restaurant, :content

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    # me = @@all.select do |obj|
    #   obj == self
    self.customer
    end

  def restaurant
    self.restaurant
  end


end


# Review.all
#  + returns all of the reviews
# + Review#customer
#  + returns the customer for that given review
# + Review#restaurant
#  + returns the restaurant for that given review
