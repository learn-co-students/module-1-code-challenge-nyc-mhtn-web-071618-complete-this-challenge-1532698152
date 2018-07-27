require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variable and/or set up new object instances,
# so they will be available to test and play around with in your console


restaurant1 = Restaurant.new("Pollo Loko")

customer1 = Customer.new("Ronald", "Cuello")
customer2 = Customer.new("Ralph", "Cuello")
customer3 = Customer.new("Ronald", "Cuello")
review1 = Review.new(customer1, restaurant1, "The food is fucking awesome")


customer1.find_by_name



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
