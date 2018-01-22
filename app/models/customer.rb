class Customer
  @@all = []
  @@all_full_name = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    save_full_name
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def save_full_name
    full = self.full_name
    @@all_full_name << full
  end

  def self.find_by_name(fullname)
    self.all.find{|customer| customer.full_name == fullname}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select{|customer| customer.first_name.downcase == first_name.downcase}
  end

  def self.all_names
    @@all_full_name
    #should return an array of all of the customer full names
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
    #given some content and a restaurant,
    #creates a new review and associates it with that customer and that restaurant
  end

end
