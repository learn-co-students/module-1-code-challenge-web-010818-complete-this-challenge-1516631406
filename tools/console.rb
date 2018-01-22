require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


bob = Customer.new("Bob", "Haywood")
sue = Customer.new("Sue", "Jerkin")
jess = Customer.new("Jess", "Stevens")
charlie = Customer.new("Charlie", "Crawdad")
david = Customer.new("David", "Durkin")
david2 = Customer.new("David", "xlsjdfs")

mcdonalds = Restaurant.new("Mcdonalds")
wendys = Restaurant.new("Wendys")
pop_eyes = Restaurant.new("Pop Eyes")
burger_king = Restaurant.new("Burger King")

bob.add_review(mcdonalds, "Bad")
bob.add_review(wendys, "Good")
bob.add_review(burger_king, "Ok")

sue.add_review(burger_king, "Delish")
sue.add_review(pop_eyes, "Meh")

jess.add_review(wendys, "Wowzer")

#Customer.all
#should return all of the customers
############CHECK############
############CHECK############

#Customer.find_by_name(name)
#given a string of a full name, returns the first customer whose full name matches
############CHECK############
############CHECK############

#Customer.find_all_by_first_name(name)
#given a string of a first name, returns an array containing all customers with that first name
############CHECK############
############CHECK############

#Customer.all_names
#should return an array of all of the customer full names
############CHECK############
############CHECK############

#Customer#add_review(restaurant, content)
#given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
############CHECK############
############CHECK############

#Review.all
#returns all of the reviews
############CHECK############
############CHECK############

#Review#customer
#returns the customer for that given review
############CHECK############
############CHECK############

#Review#restaurant
#returns the restaurant for that given review
############CHECK############
############CHECK############

# Restaurant.all
# returns an array of all restaurants
############CHECK############
############CHECK############

# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches
############CHECK############
############CHECK############

# Restaurant#reviews
# returns an array of all reviews for that restaurant
############CHECK############
############CHECK############

# Restaurant#customers
# should return all of the customers who have written reviews of that restaurant.
############CHECK############
############CHECK############


Pry.start
