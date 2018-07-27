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

  def find_by_name
    Customer.all.select do |customer|
      customer.first_name == self.first_name && customer.last_name == self.last_name
    end
  end

  def find_all_by_first_name
    find_by_name.collect do |names|
       names.first_name
    end
  end

def all_names
  @@all
end





end
