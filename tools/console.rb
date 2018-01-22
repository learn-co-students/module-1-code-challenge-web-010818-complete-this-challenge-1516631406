require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'

def reload
  load 'config/environment.rb'
end

kristina = Customer.new("Kristina", "Diamond")
matt = Customer.new("Matt", "Roseman")
sara = Customer.new("Sarah", "Fensom")
mattstup = Customer.new("Matt", "Stupin")

fridays = Restaurant.new("Friday's")
cheesecake = Restaurant.new("Cheesecake Factory")
okonomi = Restaurant.new("Okonomi")

review1 = kristina.add_review(fridays, "It sucked")
review2 = matt.add_review(cheesecake, "no good")
review3 = sara.add_review(okonomi, "I loved it!")
review4 = kristina.add_review(okonomi, "my fav place")
review5 = matt.add_review(okonomi, "the service was slow")

Pry.start
