require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Andrew", "Och")
c2 = Customer.new("Evans", "Wang")
c3 = Customer.new("Andrew", "Cohn")
c4 = Customer.new("Dick", "Ward")
c5 = Customer.new("Andrew", "Och")


res1 = Restaurant.new("Arbys")
res2 = Restaurant.new("Essen")
res3 = Restaurant.new("Burger King")
res4 = Restaurant.new("Subway")
res5 = Restaurant.new("Chipotle")


rev1 = Review.new(c1, res1, 4, "v good")
rev2 = Review.new(c2, res1, 5, "they have the meats")
rev3 = Review.new(c1, res2, 3, "terrible")
rev4 = Review.new(c3, res3, 5, "bomb")
rev5 = Review.new(c2, res3, 4, "hell yeah")
rev6 = Review.new(c4, res4, 5, "I love sandys")
rev7 = Review.new(c5, res4, 1, "nope")
rev8 = Review.new(c5, res5, 5, "too good")
rev9 = Review.new(c2, res5, 2, "2 bucks for guac?")
rev10 = Review.new(c1, res1, 5, "better this time around")

#
# c2.add_review(res5, "making a new review as a test", 4)
# c1_num = c1.num_reviews
# res4_cust = res4.customers

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
