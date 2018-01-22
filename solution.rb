# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    #accept first name, return all customers with that first name
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    #return array of all customer full names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant:, content:)
    #create new review instances associated with self
    Review.new(restaurant:restaurant, content:content, customer:self)
  end
end

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

class Review
  attr_reader :restaurant, :customer, :content

  @@all = []

  def initialize(restaurant:, content:, customer:)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end
end
