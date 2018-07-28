class Review

@@all = []
#rating is integer 1-5. content is string, rating is instance,
#restaraunt is instance! dont forget
#make readers for all we dont want  customer, rest bc we dont want it to change
  attr_reader :customer, :restaurant, :rating, :content

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
