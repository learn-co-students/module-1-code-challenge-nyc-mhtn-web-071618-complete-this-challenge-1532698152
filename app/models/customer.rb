class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end #end init

  def full_name
    "#{first_name} #{last_name}"
  end #end full name

#CLASS METHODS

  def self.all
    @@all
  end #end .all

  def self.find_by_name(name)
    @@all.find do |names|
      names.full_name == name
    end
  end #end findbyname

  def self.find_all_by_first_name(name)
    @@all.map do |name|
      name.first_name == name
      ##THIS IS WRONG
    end
  end #end findallbyfirst

  def self.all_names
    @@all.map do |names| names.full_name
    end
  end #end allnames

  #INSTANCE METHODS
  def add_review(restaurant, content, rating)
    new_review = Review.new(restaurant, rating, content, self)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end #end reviews

end #end customer class
