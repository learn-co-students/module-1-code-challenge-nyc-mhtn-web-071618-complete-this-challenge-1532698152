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

  def self.find_by_name(full_name)
    first_last_array = full_name.split(' ')
    first_name = first_last_array[0]
    last_name = first_last_array[1]

    self.all.find do |customer|
      customer.first_name == first_name && customer.last_name == last_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant,content,rating)
    Review.new(self,restaurant,rating,content)
  end

  def reviews #helper method for Customer#num_reviews & Customer#restaurants
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    reviews.size
  end

  def restaurants
    restaurants = reviews.map {|review| review.restaurant}
    restaurants.uniq
  end


end # end of Customer class
