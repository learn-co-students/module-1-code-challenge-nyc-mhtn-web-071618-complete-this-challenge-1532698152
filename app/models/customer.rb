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
    Customer.all.find do |customer_name|
      customer_name.name == self
      binding.pry
    end #end of find
    end

  def find_all_by_first_name(name)
    Customer.all.select do |first|
      first.name == "#{first_name}"
    end
  end

  def all_names
    self.all
  end

  def add_review(restaurant, content, rating)
      Customer.push(restaurant, content, rating)
  end

  def num_reviews
    #would have used map to return a mutated array of the reviews
  end

  def restaurants
    #would have called Restaurant and add .uniq
  end
  
end#end of class
