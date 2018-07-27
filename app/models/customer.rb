class Customer
  attr_accessor :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

#find because we wanna find the first in this class method
  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name  == name
    end
  end

#map bc we want a new array, select
  def self.find_all_by_first_name(names)
      self.all.select do | name |
        name.first_name == names.first_name
      end
  end


def self.all_names
  self.all.map do |customer|
     customer.full_name
  end

end

#use self for customer when creating review
#then test and see all reviews to make sure its added
  def add_review(restaurant, content, rating)
    Review.new(rating, content, self, restaurant)
  end

  # first get all restraunts
  #then make another method to gets reviews
  #getting only the instance

  def get_all_reviews
    Review.all.select do |reviews|
      reviews.customer == self
    end
  end

  #what do i want - > total num of reviews
    #should do this first so i can use it later?
    #use each

#or
    def num_reviews
      get_all_reviews.count
    end




#now going onelevel deeper to get restaurant
#map returns new array
#use .uniq? since it says unique
    def restaurants
      new_restaurant = get_all_reviews.map do |reviews|
        reviews.restaurant
      end
      new_restaurant.uniq
    end







end
