class Review
  attr_reader :restaurant, :customer, :content

  @@all = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end

################################################

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

################################################

class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    firstName, lastName = name.split
    self.all.find do |customer|
      customer.first_name == firstName && customer.last_name == lastName
    end
  end

  def self.find_by_first_name(name)
    self.all.select { |customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map{ |customer| customer.full_name}
  end

  def add_review(restaurant, content)
    newReview = Review.new(restaurant, self, content)
  end

end
