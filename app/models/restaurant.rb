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

  def find_by_name(name)
    @@all.find do |restaurants|
      restaurants.name == name
    end
  end

  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
  end
end

  def customer
    Review.all.select do |reviews|
    end
  end

    def average_star_rating
      ##do the averages, all ratings over number of ratings the restaurant has.
    end

    def longest_review
      #I would get all reviews for the restaurant, then .count, then sort by count
    end


end
