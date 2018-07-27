require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('joe', 'shmoe')
c2 = Customer.new('jane', 'doe')
c3 = Customer.new('dave', 'jones')
c4 = Customer.new('mikey', 'moe')
c5 = Customer.new('stevie', 'o')

r1 = Restaurant.new('Shenanigans')
r2 = Restaurant.new('Bennigans')
r3 = Restaurant.new('The Place')
r4 = Restaurant.new('The Other Place')
r5 = Restaurant.new('The New Place')

rv1 = Review.new(c1, r1, 2, 'Great!')
rv2 = Review.new(c1, r5, 5, 'Super!')
rv3 = Review.new(c3, r2, 1, 'Hated it!')
rv4 = Review.new(c4, r2, 5, 'It was ok?')
rv5 = Review.new(c5, r3, 4, 'Liked it, I guess.')
rv6 = Review.new(c1, r4, 3, 'yup. i ate there')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
