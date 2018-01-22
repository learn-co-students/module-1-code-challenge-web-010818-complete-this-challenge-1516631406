class Customer

  @@all = []
  attr_accessor :first_name, :last_name

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
    #given a string of a full name, returns the first customer whose full name matches

    self.all.find {|customer| customer.full_name == name}

  end

  def self.find_all_by_first_name(name)
    #given a string of a first name, returns an array containing all customers with that first name

    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    #should return an array of all of the customer full names

    self.all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    #given some content and a restaurant, creates a new review and associates it with that customer and that restaurant

    Review.new(restaurant, self, content)
  end


end
