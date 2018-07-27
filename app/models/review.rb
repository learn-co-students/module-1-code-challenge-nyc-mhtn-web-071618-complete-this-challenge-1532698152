#join table
class Review
  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  @@all = []

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

end



# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an integer from 1-5