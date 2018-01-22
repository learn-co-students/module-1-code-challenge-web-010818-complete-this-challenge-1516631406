class Customer

	@@all = []
  attr_accessor :first_name, :last_name, :review

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
		@review = []
		@@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
# should return all of the customers
def self.all
	@@all
end

# given a string of a full name, returns the first customer whose full name matches
def self.find_by_name(name)
end

# given a string of a first name, returns an array containing all customers with that first name
def self.find_all_by_first_name(name)
	self.all.select{|c| c.name == self}
end

#should return an array of all of the customer full names
def self.all_names

end


# given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
def add_review(restaurant, content)
	Review.new(self, restaurant, content)
	    @review << review
end



end
