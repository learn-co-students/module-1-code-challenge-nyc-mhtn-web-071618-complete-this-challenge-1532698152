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

  def self.find_by_name(restaurant_name)
    self.all.find do |restaurant|
      restaurant
    end
  end

#  returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

# Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    customer_array = reviews.map do |review|
      review.customer
    end
    customer_array.uniq
  end

# returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    ratings_array = reviews.map do |review|
      review.rating
    end
    ratings_array.reduce(:+) / ratings_array.size
  end

#  returns the longest review content for a given restaurant
  def longest_review
    string_letters_count = 0
    content_array = reviews.map do |review|
      review.content
    end
    content_array.select do |content|
      content.size.max
    end
  end

end
