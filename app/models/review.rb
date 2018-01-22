class Review

  @@all=[]

  attr_accessor :restaurant,:customer,:content

  def initialize(restaurant,content)
    @restaurant=restaurant
    @content=content
    @@all<<self
  end

  def self.all
    @@all
  end

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end

end
