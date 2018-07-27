require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Cheryl", "Kelley")
c2 = Customer.new("Louise", "McGiboney")
c3 = Customer.new("Laura", "Brown")
c4 = Customer.new("Ray", "Brown")
c5 = Customer.new("John", "Brown")
c6 = Customer.new("John", "Brown II")

r1 = Restaurant.new("Angie's Pizza")
r2 = Restaurant.new("Dairy King")
r3 = Restaurant.new("Romito's")
r4 = Restaurant.new("Cooker's")
r5 = Restaurant.new("The Harp")

re1 = Review.new(c1, r3, 4, "It's good.")
re2 = Review.new(c2, r3, 4, "It's good.")
re3 = Review.new(c3, r4, 4, "It's good.")
re4 = Review.new(c4, r5, 4, "It's good.")
re5 = Review.new(c5, r4, 4, "It's good.")
re6 = Review.new(c5, r3, 4, "It's good.")
re7 = Review.new(c4, r2, 4, "It's good.")
re8 = Review.new(c5, r1, 4, "It's good.")
re9 = Review.new(c5, r1, 2, "It sucks now.")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
