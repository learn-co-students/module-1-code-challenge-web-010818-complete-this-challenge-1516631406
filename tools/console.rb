require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

fei = Customer.new('Fei', 'Hafferkamp')
jon = Customer.new('Jonathan', 'Hafferkamp')
jen = Customer.new('Jennifer', 'Lawrence')
jen2 = Customer.new('Jennifer', 'Anniston')
brad = Customer.new('Bradley', 'Cooper')
kendrick = Customer.new('Kendrick', 'Lamar')

gold = Restaurant.new('Golden Palace')
pasta = Restaurant.new('Pasta Land')
salad = Restaurant.new('Just Salad')
bowl = Restaurant.new('Acaiii')
subway = Restaurant.new('Subway')
chipotle = Restaurant.new('Chipotle')

fei.add_review(gold, "Okay restaurant with fast service!")
fei.add_review(bowl, "So healthy and delicioius.")
fei.add_review(subway, "Eat fresh!")
fei.add_review(chipotle, "The barbacoa is the bomb.com.")

jon.add_review(pasta, "I love Pasta Land.")
jon.add_review(chipotle, "I like the black beans.")

jen.add_review(salad, "Lots of greens.")
jen.add_review(subway, "Not so fresh.")

jen2.add_review(gold, "Convenient.")
jen2.add_review(pasta, "Very authentic!")

brad.add_review(gold, "Dim sum time!")

kendrick.add_review(bowl, "Nobody prayed for me.")

Pry.start
