
class Surf
 
  attr_accessor :name, :info
  
  @@all = []
  
  
  def save
    @@all << self
  end
  
  def self.all
    @@all.drop(1)
  end
  
  def initialize
    @name = name
    @info = info
    save
  end 
    
    
  # def self.scrape_beach
  #   shreck = self.new 
  #   html = open('https://wanderwisdom.com/travel-destinations/A-Locals-Guide-to-Orange-County-Beaches')
  #   doc = Nokogiri::HTML(html)
  #   name = doc.css("h2.subtitle")
  #   the_name = name.map{|title| title.text.strip}
  #   # binding.pry 
  # end
   
  # def self.scrape_info
  #   donkey = self.new 
  #   html = open('https://localemagazine.com/beginner-surf-spots/')
  #   doc = Nokogiri::HTML(html)
  #   info = doc.css("p span span")
  #   the_info = info.map{|info| info.text.strip}
  #   #binding.pry
  # end 
  
  def self.scrapped_data
    html = open('https://wanderwisdom.com/travel-destinations/A-Locals-Guide-to-Orange-County-Beaches')
    doc = Nokogiri::HTML(html)
    container = doc.css(".full.module.moduleText")
    container.each do |b|
      
      
      # beach_id = ".full.module.moduleText"['id'].split('_').last.to_i
      # title_el = ".full.module.moduleText".at_css('h1 a')
      
      
      
      title = b.css("h2.subtitle").text.strip
      
      info = b.css("p").text.strip
          Surf.new
      #binding.pry
    end
  end
  
  
end 

