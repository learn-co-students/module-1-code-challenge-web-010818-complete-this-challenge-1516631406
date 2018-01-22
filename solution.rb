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
    self.all.select { |c| c.full_name == name }.first
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
    self.all.select { |r| r.name == name }.first
  end

  def my_reviews_helper
    Review.all.select { |r| r.restaurant == self }
  end

  def reviews
    my_reviews_helper.map { |r| r.content }
  end

  def customers
    my_reviews_helper.map { |r| r.customer }
  end
end
