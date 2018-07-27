class Review
  attr_reader :customer, :restaurant, :comment, :rating

  @@all=[]

  def initialize(restaurant, customer, comment, rating)
    @restaurant = restaurant
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end



end
