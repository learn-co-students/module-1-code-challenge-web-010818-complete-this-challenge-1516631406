class Review
  attr_accessor :restaurant, :content, :customer
  @@all = []

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer

    @@all << self
  end

  def self.all
    @@all
  end
end
