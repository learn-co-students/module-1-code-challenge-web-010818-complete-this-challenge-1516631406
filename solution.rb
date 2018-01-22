# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name
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
    self.all.find { |c| c.full_name == name }
  end

  def self.find_all_by_first_name(name)
    self.all.select { |c| c.first_name == name }
  end

  def self.all_names
    self.all.map { |c| c.full_name }
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
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
    self.all.find { |r| r.name == name }
  end

  def reviews
    Review.all.select { |r| r.restaurant == self }
  end

  def customers
    reviews.map { |r| r.customer }
  end
end

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
    @customer
  end

  def restaurant
    @restaurant
  end
end
