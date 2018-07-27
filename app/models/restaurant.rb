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

  def self.find_by_name(name) # `Restaurant.find_by_name(name) given a string of restaurant name, returns the first restaurant that matches
    all.find(name)
  end



end
