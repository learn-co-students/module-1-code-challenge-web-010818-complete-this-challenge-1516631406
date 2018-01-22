class Review
  attr_accessor :review, :customer, :restaurant
  @@all = []

  def initialize(customer, restaurant, review)
    @review = review
    @customer = customer
    @restaurant = restaurant
    @@all << self
    # @customers = []
  end

  def self.all
    @@all
  end

  # def add_review(customer)
  #   @customers << customer
  #   customer.review = self
  # end

end
