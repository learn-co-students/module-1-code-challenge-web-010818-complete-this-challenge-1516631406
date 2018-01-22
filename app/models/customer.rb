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
