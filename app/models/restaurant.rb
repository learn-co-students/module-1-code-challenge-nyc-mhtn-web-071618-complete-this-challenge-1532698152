require 'pry'

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

    all.find do |restaurant|
      restaurant.name == name
    end

  end


  def customers

    customer_array = []

    Review.all.each do |review|
      if review.restaurant == self
        customer_array << review.customer
      end
    end

    return customer_array.uniq

  end


  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end


  def average_star_rating

    numerator = 0.0
    denominator = 0.0

    reviews.each do |review|
      numerator += review.rating
      denominator += 1
    end

    return numerator/denominator

  end


  def longest_review

    longest_review_length = 0
    longest_review_content = ""

    reviews.each do |review|
      if review.content.length > longest_review_length
        longest_review_content = review.content
        longest_review_length = review.content.length
      end
    end

    return longest_review_content

  end

end # END OF CLASS
