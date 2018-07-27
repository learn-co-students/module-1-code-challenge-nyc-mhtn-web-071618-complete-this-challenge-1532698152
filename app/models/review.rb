class Review
  @@all = []
  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  def initialize(content, restaurant, customer, rating)
    @restaurant = restaurant
    @rating = rating
    @content = content
    @customer = customer
    @@all << self
  end #end init

  def self.all
    @@all
  end #end .all

  def customer
    binding.pry
    self.map {|review| review.customer}
  end #end customer

  def restaurant
    #self same as customer but with restauant

  end #end resrtaurant

  def rating
    #self same as customer but with rating
  end #end rating

  def content
    #self sameas customer but wth content

  end #end content

end #end review class
