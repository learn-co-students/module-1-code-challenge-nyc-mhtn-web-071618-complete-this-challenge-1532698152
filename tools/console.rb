require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Jeff", "David")
c2 = Customer.new("Suz", "Burgess")
c3 = Customer.new("Emily", "Thorley")
c4 = Customer.new("Jeff", "Bunker")
c5 = Customer.new("Lesley", "Jones")
r1 = Restaurant.new("Pot Luck")
r2 = Restaurant.new("Home Cookin BBQ")
r3 = Restaurant.new("Greens")
r4 = Restaurant.new("Uptown")
rev1 = Review.new(5, "Good", c1, r2)
rev2 = Review.new(4, "Decent", c2, r4)
rev3 = Review.new(1, "Nasty", c2, r3)
rev4 = Review.new(3, "It was ok", c4, r3)
rev5 = Review.new(5, "Best place ever", c3, r1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
