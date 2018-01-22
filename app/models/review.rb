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

  def self.customer
    @customer
  end

  def self.restaurant
    @restaurant
  end


end
