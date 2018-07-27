require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cartman = Customer.new("Eric", "Cartman")
kyle = Customer.new("Kyle", "Broflovski")
stan = Customer.new("Stan", "Marsh")
kenny = Customer.new("Kenny", "McCormick")

citywok = Restaurant.new("City Wok")
raisins = Restaurant.new("Raisins")

cc = Review.new(3, "jfaslkjfhalsjfhasfdlkfjh", cartman, citywok)
kc = Review.new(2, "jfaslkjfhahaslkfjh", kyle, citywok)
kenc = Review.new(4, "jfaslkjfhalsjfhaslkfjh", kenny, citywok)
sc = Review.new(5, "jfaslkjfhalshaslkfjh", stan, citywok)
cr = Review.new(5, "jfaslkjfhjfhaslkfjh", cartman, raisins)
sr = Review.new(5, "jfaslkjfhalsjfhkfjh", stan, raisins)
kenr = Review.new(5, "jfaslkjfhalsjfhaslkfjhrg", kenny, raisins)
kr = Review.new(5, "jfaslkjfhhaslkfjh", kyle, raisins)
cc2 = Review.new(4, "Not shit this time nice guys", cartman, citywok)

Wangtron::Gainz.get

binding.pry
0 #leave this here to ensure binding.pry isn't the last line