# Please copy/paste all three classes into this file to submit your solution!
class Customer
  @@all=[]

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all<<self.full_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |t|
      t==name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |t|
      first_name=t.split(" ")
      first_name[0]==name
    end
  end

  def self.all_names
    @@all
  end

  def add_review(restaurant,content)
    restaurant_ob=Restaurant.new(restaurant)
    review=Review.new(restaurant,content)
    review.customer=self
    review.restaurant=restaurant_ob
    review
  end
end

class Restaurant
  @@all=[]

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |t|
      t==name
    end
  end

  def reviews
    self.reviews
  end

  def customers

  end
end

class Review

  @@all=[]

  attr_accessor :restaurant,:customer,:content

  def initialize(restaurant,content)
    @restaurant=restaurant
    @content=content
    @@all<<self
  end

  def self.all
    @@all
  end

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end
end
