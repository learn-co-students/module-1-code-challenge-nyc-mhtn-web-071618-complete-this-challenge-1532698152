require 'bundler/setup'
Bundler.require
require_rel '../app'


jack = Customer.new("Jack","Mulvaney")
gardiner = Customer.new("Gardiner","Nardini")
andrew = Customer.new("Andrew","Emil")
sasha = Customer.new("Sasha","Feldman")
gardiner2 = Customer.new("Gardiner","Smith")
gardiner_clone = Customer.new("Gardiner","Nardini")

pizza_palace = Restaurant.new("Pizza Palace")
burger_king = Restaurant.new("Burger King")
sweet_greens = Restaurant.new("Sweet Greens")

review1 = Review.new(jack,pizza_palace,1,"what have i done in life to deserve this?")
review2 = Review.new(gardiner,burger_king,3,"not bad")
review3 = Review.new(andrew,sweet_greens,4,"great")
review4 = Review.new(sasha,burger_king,2,"not my cup of tea")
review5 = Review.new(gardiner,sweet_greens,5,"uber healthy i love this place!")
review6 = Review.new(gardiner,sweet_greens, 3, "chicken was old this time")
review7 = Review.new(gardiner,sweet_greens,5, "This is my longest review yet. I decided I really love sweet greens and im only eating here from now on.")

binding.pry
