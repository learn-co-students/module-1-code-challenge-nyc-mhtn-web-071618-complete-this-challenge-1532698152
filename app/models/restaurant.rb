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
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end


#do this first so u can use as a helper methods for the next one
  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end
  end

#now going onelevel deeper to get customers
#map returns new array
#use .uniq? since it says unique
    def customers
      new_customer = reviews.map do |review|
        review.customer
      end
      new_customer.uniq
    end


#get restaraunts
#divide by the numbers of instances is has to get avererage
    def average_star_rating
    total = 0
    averages = []
      averages = reviews.map do |review|
        review.rating
      end
        averages.each do |avg|
        total += avg
      end
        total/averages.count
    end


#get review Instances
#since its a string we could make it into an array then find the length
# and compare until we get the longest one
    def longest_review
        count = 0
        longest_one = ""
        reviews.map do |customer|
          if customer.content.length > count
            count = customer.content.length
            longest_one = customer.content
          end
          longest_one
      end
    end
end
