class Review
  attr_reader :customer, :restaurant, :rating, :content
  @@all =[]
  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end


  def

  end


  def customer
      Review.all.select do |x|
      x.customer == self
      x
      end
    end
  end



  def restaurant
    Review.all.select do |x|
    x == self
    x.restaurant
  end
  end


 def rating
   Review.all.select do |x|
   x == self
   x.rating
  end
 end
end
#to finish i would use helper method to make sorting through the array easier
# and more precise.
#


  - `Review.all`
    - returns all of the reviews
  - `Review#customer`
    - returns the customer object for that given review
    - Once a review is created, I should not be able to change the author
  - `Review#restaurant`
    - returns the restaurant object for that given review
    - Once a review is created, I should not be able to change the restaurant
  - `Review#rating`
    - returns the star rating for a restaurant. This should be an integer from 1-5
  - `Review#content`
    - returns the review content, as a string, for a particular review
