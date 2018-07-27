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

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select { |review| review.customer == self  }
  end

  def restaurants
    restuarant_arr = num_reviews.map { |review| review.restaurant }
    restuarant_arr.uniq
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.first_name + " " + customer.last_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select { |customer| customer.first_name == first_name }
  end

  def self.all_names
    self.all.map { |customer| customer.first_name + " " + customer.last_name }
  end

end
