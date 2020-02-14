
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
  
  def self.scraped_data
    html = open('https://wanderwisdom.com/travel-destinations/A-Locals-Guide-to-Orange-County-Beaches')
    doc = Nokogiri::HTML(html)
    container = doc.css("div.full.module.moduleText")
    container.each do |b|
      name = b.css("h2.subtitle").text.strip
      info = b.css("p").text.strip
       Surf.new(name, info)
      #binding.pry
    end
  end
  
  def self.find(input) 
    self.all[input]
  end 
  
end 

