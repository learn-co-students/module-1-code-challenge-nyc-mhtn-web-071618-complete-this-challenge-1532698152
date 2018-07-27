require_relative '../config/environment.rb'
#REQUIRE WANGTRON

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#CREATE CUSTOMER INSTANTITAITJFJDDJON ==========###
customer1 = Customer.new("lil", "timmy")
customer2 = Customer.new("terry", "bradshaw")
customer3 = Customer.new("kelsey", "grammer")
customer4 = Customer.new("kevin", "sorbo")
customer5 = Customer.new("lil", "beatrice")

#CREATE RESTAURANT INSTANTTSOOSNN #########=========
restaurant1 = Restaurant.new("lil timmys enchiladas")
restaurant2 = Restaurant.new("los pollos hermanos")
restaurant3 = Restaurant.new("bobbies")
restaurant4 = Restaurant.new("mcdonalds")

#CREATE REVEIEW INSTNATIOSNZONS ========

review1 = Review.new("bad", restaurant1, customer1, 1)
review2 = Review.new("aight", restaurant2, customer1, 3)
review3 = Review.new("1 star", restaurant1, customer3, 1)
review4 = Review.new("1 hunnid", restaurant4, customer4, 5)


review1.customer



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
