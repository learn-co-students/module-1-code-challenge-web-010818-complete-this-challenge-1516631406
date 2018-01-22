# Please copy/paste all three classes into this file to submit your solution!

require "pry"

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name.capitalize
    @last_name  = last_name.capitalize
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
      name.downcase == customer.full_name.downcase
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      name.downcase == customer.first_name.downcase
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant_name, content)
    #FIND OR CREATE BY because what customer would have the restaurant instance when they wrote the review
    restaurant = Restaurant.all.find do |restaurant|
      restaurant.name.downcase == restaurant_name.downcase
    end

    if restaurant
      Review.new(self, restaurant, content)
    else
      new_restaurant = Restaurant.new(restaurant_name)
      Review.new(self, new_restaurant, content)
    end

    #JUST CREATE
    #Review.new(self, restaurant_instance, content)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
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
    self.all.find do |restaurant|
      name.downcase == restaurant.name.downcase
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
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
