require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


@morganne = Customer.new("morganne", "gagne")
@mike = Customer.new("mike", "dodek")
@miket = Customer.new("mike", "tyson")

@bojangles = Restaurant.new("bojangles")
@bojangles2 = Restaurant.new("bojangles")
@mcdonalds = Restaurant.new("mcdonalds")

@review1 = @morganne.add_review(@bojangles, "cajun chx biscuit FTW")
@review2 = @mike.add_review(@mcdonalds, "1/4 lb-er 4 life")
@review3= @miket.add_review(@bojangles, "tyson chicken better")

Pry.start
