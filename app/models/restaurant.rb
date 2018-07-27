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

  def find_by_name(name)
    Restaurant.all.find do |rest_name|
      rest_name.name == self
    end #end of find
  end

def customers
  #would have called Customer and add .uniq
end

def average_star_rating
  #would have called self.average
end

end# end of class
