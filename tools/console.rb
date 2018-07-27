require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#create new restarunts, reviews and customers to first make sure im getting ALL of them for each class method.
#make at least 3

otb = Restaurant.new("On The Border")
neway = Restaurant.new("Neway")
tacopronto = Restaurant.new("Taco Pronto")
haab = Restaurant.new("Haab")

jess = Customer.new("Jessica","Long")
jared= Customer.new("Jared", "Long")
leah = Customer.new("Leah", "Long")
pam = Customer.new("Pam", "Long")
dianna = Customer.new("Dianna", "Llamas")

rv1 = Review.new(1, "Never Again", jess, tacopronto)
rv2= Review.new(3, "Once a year", jared, neway)
rv3 = Review.new(5, "Every damn day", leah, otb)
rv4 = Review.new(2, "Meh", pam, haab)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
