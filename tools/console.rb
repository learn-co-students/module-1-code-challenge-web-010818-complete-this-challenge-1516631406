require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

anna = Customer.new("Anna", "Yang")
leo = Customer.new("Leo", "Wong")
anna2 = Customer.new("Anna", "Muntz")

kfc = Restaurant.new("KFC")
fig = Restaurant.new("Olive and Fig")

anna.add_review(fig, "It was sooo good")
leo.add_review(fig, "It was okay")
leo.add_review(kfc, "Loving it")
anna.add_review(kfc, "eww")
anna2.add_review(kfc, "HATE IT")
anna2.add_review(fig, "MUST GO")


Pry.start
