require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

matt = Customer.new("Matt", "Jackson")
eli = Customer.new("Eli", "Smith")
kyle = Customer.new("Kyle", "Morse")

chinese = Restaurant.new("Chinese spot")
mexican = Restaurant.new("Mexican spot")
american = Restaurant.new("Burger spot")

matt.add_review(american, "wack")
matt.add_review(mexican, "fire")
eli.add_review(american, "decent")
eli.add_review(chinese, "best")
kyle.add_review(american, "whatever")
kyle.add_review(mexican, "ehh")

Pry.start
