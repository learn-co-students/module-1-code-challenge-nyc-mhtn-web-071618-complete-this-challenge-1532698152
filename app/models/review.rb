class Review
  attr_reader :customer, :restaurant, :review

@@all = []

  def initialize(customer, restaurant, review = "", rating= nil)
    @customer = customer
    @restaurant = restaurant
    @review = review
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end



  def customer
    Review.all.select do |review|
    self.review == review.review

  end
  end

# for the rating we would iterate through the our Review.all then select the instance aka element that matches that instance.rating


#  for whatever review is caling .content we will find that revie




end
