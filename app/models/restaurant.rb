class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select { |review| review.restaurant == self  }
  end

  def customers
    reviews.map { |review| review.customer }
  end

  def average_star_rating
    review_star_arr = reviews.map { |review| review.rating }
    review_star_sum = 0
    review_star_arr.each { |star| review_star_sum += star }
    average_rating = review_star_sum / review_star_arr.count
    average_rating
  end

  def longest_review
    index_of_longest_review = 0
    longest_review = 0
    reviews.each do |review|
      if review.content.length > longest_review
        index_of_longest_review = reviews.index(review)
      end
    end
    reviews[index_of_longest_review]
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |restuarant| restuarant.name == name }
  end

end
