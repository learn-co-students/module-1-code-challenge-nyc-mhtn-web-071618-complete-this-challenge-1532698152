class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.select do |rests|
      # binding.pry
      rests.name == name
    end
  end

  def reviews
    #returns array of all reviews where review restaurant == self
    reviews = Review.all.map do |review|
      review.restaurant == self
    # binding.pry
    end
    reviews
  end

  def customers
    #iterates through reviews array to return customers from each review attached to restaurant
    reviews.map do |review|
      review.customer
    end
  end

  def reviews
    #iterates through reviews.all and returns array of reviews connected to instance of restaurant
  end

  def average_star_rating
    #create array of ratings from def reviews and add ratings and divide by array.length
  end

  def longest_review
  end

end

# Restaurant.all
# returns an array of all restaurants
# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches

# Restaurant#customers
# Returns a unique list of all customers who have reviewed a particular restaurant.
# Restaurant#reviews
# returns an array of all reviews for that restaurant
# Restaurant#average_star_rating
# returns the average star rating for a restaurant based on its reviews
# Restaurant#longest_review
# returns the longest review content for a given restaurant
