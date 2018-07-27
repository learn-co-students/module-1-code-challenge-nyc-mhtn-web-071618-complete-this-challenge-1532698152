class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|restaurant|
      restaurant.name == name
    }
  end

  def reviews
    Review.all.select{|review|
      review.restaurant == self
    }
  end

  def customers
    customers = self.reviews.map{|review|
      review.customer
    }
    customers.uniq
  end

  def average_star_rating
    review_array = self.reviews
    return 0 if review_array.size == 0
    total = 0
    review_array.each{|review|
      total += review.rating
    }
    (total*1.0/review_array.size).round(1)
  end

  def longest_review
    content = ""
    self.reviews.each{|review|
      length = review.content.length
      content = review.content if length > content.length
    }
    content
  end

end
