# Please copy/paste all three classes into this file to submit your solution!
class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def restaurant_instances
    Review.all.select do |each_instance_of_class|
      each_instance_of_class.restaurant == self
    end
  end

  def customers
    restaurant_instances.map do |each_instance_of_self|
      each_instance_of_self.customer
    end
  end

  def reviews
    restaurant_instances.map do |each_instance_of_self|
      each_instance_of_self.content
    end
  end

  def self.find_by_name(name)
    @@all.find do |each_restaurant|
      each_restaurant.name == name
    end
  end
end

class Customer

  @@all = []
  attr_accessor :first_name, :last_name

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

  def add_review(restaurant,content)
    Review.new(restaurant,self, content)
  end

  def customer_instances
    Review.all.select do |each_instance_of_class|
      each_instance_of_class.customer == self
    end
  end

  def self.all_names
    @@all.map do |each_customer|
      each_customer.full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    @@all.select do |each_customer|
      each_customer.first_name == first_name
    end
  end

  def self.find_by_name(fullname)
    @@all.find do |each_customer|
      each_customer.full_name == fullname
    end
  end
end


class Review
  @@all = []

  attr_accessor :restaurant, :customer, :content

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
