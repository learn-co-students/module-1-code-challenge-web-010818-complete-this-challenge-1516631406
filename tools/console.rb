require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

alex = Customer.new("Alex", "Katalkin")
alex1 = Customer.new("Alex", "Mona")
sonya = Customer.new("Sonya", "Komar")
aoc = Restaurant.new("AOC")
# good = Review.new(alex, aoc, "Good")
alex.add_review(aoc, "Good")
sonya.add_review(aoc, "Sucks")

Pry.start
