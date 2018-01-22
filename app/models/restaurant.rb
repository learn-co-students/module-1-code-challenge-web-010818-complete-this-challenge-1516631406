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
