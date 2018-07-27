require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


def test(str, v1=nil, v2=nil)
  if v1 == v2
    puts str.green
  else
    puts "#{str} \n\texpected: #{v2}\n\tgot:#{v1}".red
  end
end

customer1 = Customer.new("first1", "last1")
customer2 = Customer.new("first2", "last2")
customer3 = Customer.new("first3", "last3")

restaurant1 = Restaurant.new("restaurant1")
restaurant2 = Restaurant.new("restaurant2")
restaurant3 = Restaurant.new("restaurant3")

review1=customer1.add_review(restaurant1, "content1", 5 )
review2=customer1.add_review(restaurant2, "content1", 5 )
review3=customer2.add_review(restaurant1, "content2", 2 )
review4=customer1.add_review(restaurant2, "content3", 3 )
review5=customer2.add_review(restaurant2, "content4, very long", 4 )
review6=customer3.add_review(restaurant2, "content5", 5 )
review7=customer1.add_review(restaurant3, "content3", 3 )


test "CUSTOMER"
test "Customer.find_by_name", Customer.find_by_name("first1 last1"), customer1
test "Customer.find_all_by_first_name", Customer.find_all_by_first_name("first2"), [customer2]
test "Customer.all_names", Customer.all_names, ["first1 last1","first2 last2","first3 last3"]
test "customer1.num_reviews", customer1.num_reviews, 4
test "customer1.restaurants", customer1.restaurants, [restaurant1,restaurant2,restaurant3 ]

test "RESTAURANT"
test "Restaurant.find_by_name", Restaurant.find_by_name("restaurant2"),restaurant2
test "restaurant1.customers", restaurant1.customers,[customer1,customer2]
test "restaurant1.reviews", restaurant1.reviews, [review1,review3]
test "restaurant1.average_star_rating", restaurant1.average_star_rating,3.5
test "Restaurant.longest_review", restaurant2.longest_review, review5.content

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
