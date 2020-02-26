class Surf
  attr_accessor :name, :info
  @@all = []
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def initialize(name, info)
    @name = name
    @info = info
    save
  end 
  
  
  def self.find(input) 
    self.all[input.to_i - 1]
  end 
end