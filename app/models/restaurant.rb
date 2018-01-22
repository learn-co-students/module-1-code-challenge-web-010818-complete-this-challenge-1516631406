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
