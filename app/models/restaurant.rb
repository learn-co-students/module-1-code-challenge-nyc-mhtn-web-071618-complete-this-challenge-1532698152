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
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews #helper method for
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map {|review| review.customer}
  end

  def average_star_rating
    total_rating = []
    reviews.each do |review|
      total_rating << review.rating
    end
    ratings_sum = total_rating.reduce(:+)
    num_of_ratings = total_rating.size
    averate_star_rating = ratings_sum/num_of_ratings
  end

  def longest_review
    longest_review_length = 0
    longest_review = []
    reviews.each do |review|
      if review.content.size > longest_review_length
        longest_review_length = review.content.size
        longest_review[0] = review.content
      end
    end
    longest_review[0]
  end


end # end of Restaurant class
