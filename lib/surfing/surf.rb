
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
    container = doc.css("div.moduleText")
    container.each do |b|
      title = b.css("h2.subtitle")
      info = b.css("p")
      title.each_with_index do |t, i|
          bubba = t.text
          info = info[i].text
          Surf.new
          doc.xpath('//p/* | //p/text()').count # => 10
ndst = doc.search('//p/* | //p/text()')[1..-1]
ndst.remove
puts doc.to_s
      #binding.pry
  end
end
end
  
  
end 

