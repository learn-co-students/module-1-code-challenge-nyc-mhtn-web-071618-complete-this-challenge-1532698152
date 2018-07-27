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

  def find_by_name(name)
    #given a string of a **full name**, returns the **first customer** whose full name matches
    name.find do |names|
      names == self.full_name
    end
  end

  def find_all_by_first_name(name)
    @@all.select do |names|
      names.first_name == name
    end
  end

  def all_names
    array = []
    @@all.map do |names|
      array << names.join
    end
  end

  def add_review(restaurant, content, rating)
    Restaurant.new(rating, content, self, restaurant)
  end

  def num_reviews
    Review.all.select do |reviews|
      reviews.customer == self
      ##needs a .count/.length in here
    end
  end

  def restaurants
    Review.all.select do |reviews|
      reviews.customer == self
      reviews.restaurant
    end
  end

end
