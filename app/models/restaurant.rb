class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end #end init

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end #end findbyname

  def average_star_rating
  end #end avg_star

  def longest_review

  end #end lognest_review

end #end restaurant class
