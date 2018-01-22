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
    self.all.find { |r| r.name == name }
  end

  def reviews
    Review.all.select { |r| r.restaurant == self }
  end

  def customers
    reviews.map { |r| r.customer }
  end
end
