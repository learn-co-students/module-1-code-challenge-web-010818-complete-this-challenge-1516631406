class Customer
  attr_accessor :first_name, :last_name, :review
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

  def add_review(restaurant, review)
    Review.new(self, restaurant, review)
  end

  def self.all_names
    Customer.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def self.find_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end

  end



end
