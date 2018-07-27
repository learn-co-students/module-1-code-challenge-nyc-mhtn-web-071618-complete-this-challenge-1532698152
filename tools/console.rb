require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cust1 = Customer.new("Brian", "Wadlow")
cust2 = Customer.new("Liza", "Persky")
cust3 = Customer.new("Bill", "Persky")
cust4 = Customer.new("Joanna", "Patton")
cust5 = Customer.new("Brian", "Lord")

rest1 = Restaurant.new("The Palm")
rest2 = Restaurant.new("Sirenetta")
rest3 = Restaurant.new("Cosme")
rest4 = Restaurant.new("Eleven Madison Park")

rev1 = Review.new(rest1, cust1, "excellent", 4)
rev2 = Review.new(rest2, cust2, "pretty good", 3)
rev3 = Review.new(rest3, cust3, "very fun", 5)
rev4 = Review.new(rest4, cust4, "best meal i ever had", 5)
rev5 = Review.new(rest1, cust2, "a classic", 4)
rev6 = Review.new(rest1, cust3, "Best steak in the city", 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
