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
    if Customer.all.map{|customer| customer.full_name}.include?(name)
      return Customer.all.find{|customer| customer.full_name == name}
    else
      f_name = name.split(" ")[0]
      l_name = name.split(" ")[1]
      new_customer = Customer.new(f_name, l_name)
    end
    new_customer
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map{|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    review = Review.new(self, restaurant)
    review.content =content
    Review.all << review
  end

  def reviews
    Review.all.select{|review| review.customer == self}
  end
end
