require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new('steve', 'jobs')
customer2 = Customer.new('frank', 'thomas')

restaurant1 = Restaurant.new('tinto')
restaurant2 = Restaurant.new('guava')

review1 = Review.new(5, 'blahblah', customer1, restaurant1)
review2 = Review.new(3, 'blaaa', customer2, restaurant1)
review3 = Review.new(4, 'bla', customer1, restaurant2)







binding.pry
0 #leave this here to ensure binding.pry isn't the last line
