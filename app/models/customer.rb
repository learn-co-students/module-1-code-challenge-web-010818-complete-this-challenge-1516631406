class Customer
  attr_reader :first_name, :last_name

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
    firstName, lastName = name.split
    self.all.find do |customer|
      customer.first_name == firstName && customer.last_name == lastName
    end
  end

  def self.find_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do|customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    newReview = Review.new(restaurant, self, content)
  end

end
