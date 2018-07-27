require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jin = Customer.new("Jin", "Li")
jinl = Customer.new("Jin", "Loo")
jinb = Customer.new("Jin", "Boo")
angel = Customer.new("Angel", "Tsang")
boba = Customer.new("Boba", "Li")

sophie = Restaurant.new("sophie")
deli = Restaurant.new("deli")
wangtron = Restaurant.new("wangtron")
foodcourt = Restaurant.new("foodcourt")
mcd = Restaurant.new("mcd")

#(customer, restaurant, rating, content)
r1 = Review.new(jin, sophie, 1, "its greeeattttt")
r2 = Review.new(angel, wangtron, 5, "WANGTRON")
r3 = Review.new(boba, foodcourt, 1, "greeeattttt")
r4 = Review.new(jinl, mcd, 5, "fast food")
r5 = Review.new(jinb, sophie, 3, "its greeeattttt")
r6 = Review.new(jin, sophie, 2, "its horribad")
r7 = Review.new(angel, sophie, 1, "what is this")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
