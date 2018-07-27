class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
      binding.pry
  end


  def self.find_by_name(name)
    self.all.find do |names|
      names == self
    end
  end


#do this first so u can use as a helper methods for the next one
  def reviews
    Review.all.select do |reviews|
      reviews == self
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

    end


#get review Instances
#since its a string we could make it into an array then find the length
# and compare until we get the longest one
    def longest_review

    end


end
