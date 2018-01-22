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

  def restaurant_instances
    Review.all.select do |each_instance_of_class|
      each_instance_of_class.restaurant == self
    end
  end

  def customers
    restaurant_instances.map do |each_instance_of_self|
      each_instance_of_self.customer
    end
  end

  def reviews
    restaurant_instances.map do |each_instance_of_self|
      each_instance_of_self.content
    end
  end

  def self.find_by_name(name)
    @@all.find do |each_restaurant|
      each_restaurant.name == name
    end
  end


end
