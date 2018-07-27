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

  def self.find_by_name(name)

    @@all.find do |customer|
       customer.first_name == name.first_name && customer.last_name == name.last_name
      end
    end

    def self.find_by_first_name(name)
      @@all.select do |customer|
        customer.first_name = name.first_name
      end
    end

    def self.all_names
      all = []
        @@all.map do |customer|
         all << customer.first_name + " " + customer.last_name
      end
      all.flatten.uniq
    end
#(customer, restaurant, rating, content)
    def add_review(restaurant, rating, content)
      Review.new(self, restaurant,rating, content)
    end
    #helper methods
    def reviews
      Review.all.select{|review| review.customer == self}
    end

    def num_reviews
      reviews.count
    end

    # def num_reviews
    #    Review.all.select{|review| review.customer == self}.count
    #  end

    def restaurants
      reviews.map do |a_review|
        a_review.restaurant
      end
    end


end
