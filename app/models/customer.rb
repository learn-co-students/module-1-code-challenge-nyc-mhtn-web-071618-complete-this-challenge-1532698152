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

  def self.find_by_name(name)
    self.all.find{|customer|
      customer.full_name == name
    }
  end

  def self.find_all_by_first_name(name)
    self.all.select{|customer|
      customer.first_name == name
    }
  end

  def self.all_names
    self.all.map{|customer|
      customer.full_name
    }
  end

  #get all of the reviews belong to a customer
  def reviews
    Review.all.select{|review|
      review.customer == self
    }
  end


  def add_review( restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #get the reviews count belongs to a customer
  def num_reviews
    self.reviews.size
  end

  #get all of the restaurants which is reviewed by a customer
  def restaurants
    reviews = self.reviews
    restaurants = reviews.map{|review|
      review.restaurant
    }
    restaurants.uniq
  end


end
