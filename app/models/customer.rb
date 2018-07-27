class Customer
  attr_accessor :first_name, :last_name

  @@all=[]

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

  def self.find_by_name(full_name)
    self.all.select do |name|
      "#{name.first_name} #{name.last_name}" == full_name
      end
    end

    def self.find_all_by_first_name(first)
      self.all.select do |name|
        name.first_name == first
      end
    end

    def self.all_names
      self.all.map do |names|
        "#{name.first_name} #{name.last_name}"
    end
  end






end
