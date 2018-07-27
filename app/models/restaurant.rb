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
    self.all.find{|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.map{|review| review.customer}.uniq
  end

  def average_star_rating
    ratings = reviews.map{|review| review.rating}
    ratings.inject(:+) / ratings.count
  end

  def longest_review
    reviews.map do |review|
      review.content.count
      #DIDN'T FINISH!!! I know I need to iterate through each review and count the characters of the string.
      #I need to compare each count against the preview count during the iteration.
    end
  end

end
