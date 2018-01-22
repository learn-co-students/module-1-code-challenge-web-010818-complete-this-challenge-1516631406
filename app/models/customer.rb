class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name.upcase
    @last_name  = last_name.upcase
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    full_name = full_name.split(" ").join(" ").strip.upcase
    self.all.find{|customer| "#{customer.first_name} #{customer.last_name}" == full_name}
  end

  def self.find_all_by_first_name(first_name)
    first_name = first_name.strip.upcase
    self.all.find_all{|customer| customer.first_name == first_name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all_names
    self.all.map{|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def reviews
    Review.all.select{|review| review.customer == self}
  end

  def restaurants
    self.reviews.map{|review| review.restaurant}
  end
end
