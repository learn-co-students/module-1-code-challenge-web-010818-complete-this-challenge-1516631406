class Customer

  @@all = []
  attr_accessor :first_name, :last_name , :review , :restaurant, :customer

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
    name_arr = name.split(" ")
    @@all.select do |obj|
      obj.first_name == name_arr[0] && obj.last_name == name_arr[1]
    end
  end

  def self.find_all_by_first_name(name)
      @@all.select do |obj|
        obj.first_name == name
    end
  end


  def self.all_names
    arr = []
    @@all.each do |obj|
      arr.push(obj.full_name)
    end
    arr
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end



end





# Customer.all
#   + should return all of the customers
# + Customer.find_by_name(name)
#   + given a string of a full name, returns the first customer whose full name matches
# + Customer.find_all_by_first_name(name)
#   + given a string of a first name, returns an array containing all customers with that first name
# + Customer.all_names
#   + should return an array of all of the customer full names
# + Customer#add_review(restaurant, content)
#   + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
