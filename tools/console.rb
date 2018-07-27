require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

david = Customer.new("David", "Lago")
jin = Customer.new("Jin", "Smith")
evans = Customer.new("Wang", "Tron")

misti = Restaurant.new("Misti")
pazzo = Restaurant.new("Pazzo")
bww = Restaurant.new("Buffalo Wild Wings")

rating1 = Review.new(david, misti, 10, "Awesome food, great atmosphere!")
rating2 = Review.new(jin, pazzo, 6, "Pretty bad my guy!")
rating3 = Review.new(evans, bww, 7, "MONEY!")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
