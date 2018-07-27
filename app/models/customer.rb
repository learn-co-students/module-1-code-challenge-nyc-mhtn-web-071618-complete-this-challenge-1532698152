class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all_names
    all_names_array = self.all.map do |cust|
      cust.full_name
    end
    all_names_array
  end

  def self.find_by_name(name)
    self.all_names.select do |full_names|
      full_names == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customers|
      customers.first_name == name
    end
  end

  def add_review(restaurant, rating, content)
    Restaurant.new(self, restaurant, rating, content)
  end

  def num_reviews
    #iterates through reviews and maps array of reviews connected to instance of customer
    #counts length of array
  end

  def restaurants
    #iterates through reviews and maps array of restaurants connected to instance of customer
    #.uniq at end of array will only return specific restaurants, in case restaurant is reviewed twice
  end


end

# Customer.all
# should return all of the customer instances
# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches
# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name
# Customer.all_names
# should return an array of all of the customer full names

# Customer#add_review(restaurant, content, rating)
# given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# Customer#num_reviews
# Returns the total number of reviews that a customer has authored
# Customer#restaurants
# Returns a unique array of all restaurants a customer has reviewed
