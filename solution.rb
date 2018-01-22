class Customer
  @@all = []
  @@all_full_name = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    save_full_name
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def save_full_name
    full = self.full_name
    @@all_full_name << full
  end

  def self.find_by_name(fullname)
    self.all.find{|customer| customer.full_name == fullname}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select{|customer| customer.first_name.downcase == first_name.downcase}
  end

  def self.all_names
    @@all_full_name
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

end


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

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name}
  end

  def my_review
    Review.all.select do |r|
      r.restaurant == self
    end
  end

  def reviews
    self.my_review.map{|r| r.content}
  end

  def customers
    self.my_review.map{|r| r.customer}
  end

end


class Review
  @@all = []
  attr_accessor :customer, :restaurant, :content

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
