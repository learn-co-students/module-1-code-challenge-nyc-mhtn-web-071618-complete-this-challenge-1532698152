class Customer
  attr_accessor :first_name, :last_name
  @@all =[]
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
      all.find(name)
  end

    def self.find_all_by_first_name(name)
      all.collect do |customer|
        customer.first_name == name
    end
  end

  def self.all_names
    all.map do |name|
      name.full_name
    end
 end
end


cus1 = Customer.new("John","Fuck you")
cus2 = Customer.new("Luis","Fuck you")
cus3 = Customer.new("Bob","Fuck you")
cus4 = Customer.new("Mark","Fuck you")




- `Customer.all`
  - should return **all** of the customer instances
- `Customer.find_by_name(name)`
  - given a string of a **full name**, returns the **first customer** whose full name matches
- `Customer.find_all_by_first_name(name)`
  - given a string of a first name, returns an **array** containing all customers with that first name
- `Customer.all_names`
  - should return an **array** of all of the customer full names
