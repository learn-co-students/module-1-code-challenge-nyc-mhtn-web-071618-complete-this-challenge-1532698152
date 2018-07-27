require 'pry'

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


  def self.find_by_name(full_name)

    all.find do |customer|
      customer.full_name == full_name
    end

  end


  def self.find_all_by_first_name(first_name)

    all.select do |customer|
      customer.first_name == first_name
    end

  end


  def self.all_names

    all.map do |customer|
      customer.full_name
    end

  end


  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end


  def num_reviews

    counter = 0

    Review.all.each do |review|
      if review.customer == self
        counter += 1
      end
    end

    return counter

  end


  def restaurants

    restaurant_array = []

    Review.all.each do |review|
      if review.customer == self
        restaurant_array << review.restaurant
      end
    end

    return restaurant_array.uniq

  end

end # END OF CLASS
