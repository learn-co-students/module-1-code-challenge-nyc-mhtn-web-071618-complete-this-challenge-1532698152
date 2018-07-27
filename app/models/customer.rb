class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def self.all
    @@all
  end

# should return an **array** of all of the customer full names
  def self.all_names
    self.all.map do |customer|
      first = customer.first_name
      last = customer.last_name
      "#{first} #{last}"
    end
  end

# given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(full_name)
    self.all.select do |customer|
      customer.all_names == full_name
    end
  end

#  given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

#  Returns the total number of reviews that a customer has authored

  def num_reviews
    customer_reviews_arr = Review.all.select do |review|
      review.customer == self
    end
    customer_reviews_arr.size
  end

#   Returns a **unique** array of all restaurants a customer has reviewed
  def restaurants
    customer_retaurants_arr = Review.all.select do |review|
      review.restaurant == self
    end
    customer_retaurants_arr.uniq
  end


end

