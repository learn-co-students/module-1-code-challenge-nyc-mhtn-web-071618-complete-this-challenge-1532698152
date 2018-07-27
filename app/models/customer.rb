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

  # def full_name(first_name, last_name)
  #   "#{first_name} #{last_name}"
  # end

  def self.find_all_by_first_name(name)
    self.all.select{|customer| customer.first_name == name}
  end

  def self.find_by_name(name)
    customers = self.find_all_by_first_name(name)
    me = customers.find{|c| c.last_name == name || c.first_name == name}
    "#{me.first_name} #{me.last_name}"
    #I realize I probably could have used the stock method that I commented out.
    #This made more sense to me, but if I had more time I could have used a helper method.
  end

  def add_review(rating, content, restaurant)
    Review.new(rating, content, self, restaurant)
  end

  def my_reviews
    Review.all.select{|review| review.customer == self}
  end

  def num_reviews
    my_reviews.count
  end

  def restaurants
    my_reviews.map{|review| review.restaurant}.uniq
  end

end
