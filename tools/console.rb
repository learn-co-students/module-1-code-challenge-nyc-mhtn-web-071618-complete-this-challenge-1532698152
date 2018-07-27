require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customer test objects
customer1 = Customer.new("jane", "doe")
customer2 = Customer.new("john", "smith")
customer3 = Customer.new("beyonce", "knowles")
customer4 = Customer.new("britney", "spears")


#restaurant test objects
restaurant1 = Restaurant.new("Juliana's")
restaurant2 = Restaurant.new("John's")
restaurant3 = Restaurant.new("Joe's")
restaurant4 = Restaurant.new("Rubirosa")

#reviews test objects
review1 = Review.new(customer1, restaurant1, 5, "great")
review1 = Review.new(customer2, restaurant2, 2, "meh")
review1 = Review.new(customer3, restaurant3, 3, "good enough")
review1 = Review.new(customer4, restaurant4, 4, "pretty good")
review1 = Review.new(customer4, restaurant4, 5, "terrible")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line