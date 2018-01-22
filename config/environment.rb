require 'bundler/setup'
Bundler.require
require_all 'app'

marty_mcfly = Customer.new("Marty","McFly")
luke_skywalker = Customer.new("Luke", "Skywalker")
leia_organa = Customer.new("Leia","Organa")
luke_cage = Customer.new("Luke","Cage")

death_star = Restaurant.new("The Death Star")
tatooine = Restaurant.new("Tatooine")
new_york = Restaurant.new("New York")

marty_mcfly.add_review(restaurant:death_star, content:"just okay")
luke_skywalker.add_review(restaurant:tatooine, content:"boring and uncool")
leia_organa.add_review(restaurant:death_star, content:"fucked up")
luke_cage.add_review(restaurant:new_york, content:"problematic")
luke_skywalker.add_review(restaurant:death_star, content:"nooooooo")
