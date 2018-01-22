class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.find_by_name(name)
    if Restaurant.all.map{|restaurant| restaurant.name}.include?(name)
      return Restauranta.all.find{|restaurant| restaurant.name == name}
    else
      new_restaurant = Restaurant.new(name)
    end
    new_restaurant
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.map{|review| review.customer}
  end

end
