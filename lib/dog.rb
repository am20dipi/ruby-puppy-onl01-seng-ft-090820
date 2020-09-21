class Dog
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.save #gets called inside initialize when a new Dog is created
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all.clear
  end
  
  def self.print_all #prints out each instance of Dog
    @@all.each do |dog|
      puts dog.name
    end
  end
  
  def save
    @@all << self
  end
end