require_relative '../config/environment.rb'
require_relative '../app/models/customer'
require_relative '../app/models/restaurant'
require_relative '../app/models/review'

def reload
  load 'config/environment.rb'
end

#Customers
c = Customer.new("Sally","Smith")
c2 = Customer.new("John","Johnson")
c3 = Customer.new("Sally","Johnson")

#Restaurants
r = Restaurant.new("Luigi's")
r2 = Restaurant.new("Jane Tavern")

#Reviews
rv = Review.new(c, r, "Terrible!")
rv2 = Review.new(c2, r, "So great! Coming back for sure!")
rv3 = Review.new(c, r2, "I got so sick!")

Pry.start
