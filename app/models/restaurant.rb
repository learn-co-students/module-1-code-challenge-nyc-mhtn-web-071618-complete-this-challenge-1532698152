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
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.select do |review|
      review.customer
    end.uniq {|a| a.customer}
  end

  def average_star_rating
    reviews.map do |review|
      review.rating
    end.inject(0.0) {|sum,x| sum + x } / reviews.count
  end

  def longest_review
    content_array = reviews.map do |review|
      review.content
    end
    max = content_array.max { |a,b| a.length <=> b.length }
    index_of_longest = content_array.index(max)
    reviews[index_of_longest].content
  end
end
