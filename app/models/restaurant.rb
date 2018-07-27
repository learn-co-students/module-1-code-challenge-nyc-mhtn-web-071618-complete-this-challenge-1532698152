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
  Restaurant.all.select do |restaurant|
    restaurant.name == self.name
  end
end

end
