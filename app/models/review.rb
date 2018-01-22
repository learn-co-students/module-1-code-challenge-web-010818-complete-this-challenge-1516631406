class Review
  attr_accessor :customer, :restaurant, :content
  @@all = []

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
    self.all.select do |review|
      review.customer == self
    end
  end

  def restaurant
    self.all.select do |review|
      review.restaurant == self
    end
  end
end
