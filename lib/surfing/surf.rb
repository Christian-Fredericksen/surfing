
class Surf
 
  attr_accessor :name, :info
  
  @@all =[]
  
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def initialize
    @name = name
    @info = info
    @@all << save
  end 
    
    
  def self.scrape_beach
    shreck = self.new 
    html = open('https://localemagazine.com/beginner-surf-spots/')
    doc = Nokogiri::HTML(html)
    name = doc.css(".entry-content h2")
    the_name = name.map{|title| title.text.strip}
    # binding.pry 
   end
   
   def self.scrape_info
    donkey = self.new 
    html = open('https://localemagazine.com/beginner-surf-spots/')
    doc = Nokogiri::HTML(html)
    info = doc.css(".entry-content h2 iframe span p")
    the_info = info.map{|title| title.text.strip}
    binding.pry
   end 
  
    
  
  
end 

