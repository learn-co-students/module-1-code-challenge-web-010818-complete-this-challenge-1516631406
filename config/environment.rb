require 'bundler/setup'
Bundler.require
require_all 'app'

bj = Customer.new("Bob", "Johnson")
bs = Customer.new("Bob","Smith")
jg = Customer.new("John", "Garvey")

restk = Restaurant.new("Killroy's")
restj = Restaurant.new("Jackson's")

bj.add_review("Killroy's", "Sucked")

bs.add_review("Killroy's", "Amazing")

jg.add_review("Jackson's", "Sometimes good")
jg.add_review("The Smith", "Sometimes bad")
