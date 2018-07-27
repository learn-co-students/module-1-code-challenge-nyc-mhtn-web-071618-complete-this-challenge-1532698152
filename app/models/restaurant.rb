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
 #Review.all.select{|a_review| a_review.restaurant == self} is the same as reviews
  def customers
    Review.all.select{|a_review| a_review.restaurant == self}.map{|own_review| own_review.customer}
  end
  #helper which i did not use
  def reviews
    Review.all.select{|a_review| a_review.restaurant == self}
  end

  def average_star_rating
    avg = reviews.map{|a_review| a_review.rating}
    sum = 0
    avg.each do |i|
    sum += i
    end
    #return interger
    sum/avg.count.to_f
  end

  def longest_review
    count = 0
    longest = ""
    reviews.map do |cust|
      if cust.content.length > count
      count = cust.content.length
      longest = cust.content
    end
    end
    longest
  end

end
