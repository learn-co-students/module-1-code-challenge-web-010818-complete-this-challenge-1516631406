class Restaurant
  attr_accessor :name
@@all = []
  def initialize(name)
    @name = name
  end

def self.all
  @@all = []
  end

  def self.find_by_name(name)
   self.all.find do |restaurant|
     restaurant.name == name
   end
 end

  def reviews
    Review.all.select do |review|
     review.restaurant == self

    end
    end

    def customers
      Review.all.select do |review|
      if review.restaurant == self
        review.customer
        end
      end
    end

end
