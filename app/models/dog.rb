class Dog
  attr_accessor :name, :breed, :age

  @@dogs = []

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    self.save
  end

  def self.all
    @@dogs
  end

  def save
    self.class.all << self
  end

end
