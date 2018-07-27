class Review

@@all = []

attr_reader :customer, :restaurant
attr_accessor :rating, :content

  def initialize(rating, content, customer, restaurant)
    @rating = rating
    @content = content
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end
