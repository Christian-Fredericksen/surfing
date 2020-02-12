
class Surf
 
  attr_accessor :name, :info
  
  @@all =[]
  
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
    
  def self.scrape_beach
    html = open('https://localemagazine.com/beginner-surf-spots/')
    doc = Nokogiri::HTML(html)
    all_titles = doc.css(".entry-content h2")
    titles_in_array = all_titles.map{|title| title.text.strip}
    #binding.pry 
   end
  
     
  #   doc = Nokogiri::HTML(open("https://localemagazine.com/beginner-surf-spots/"))
  #   name = doc.css("h2 span").text.split(/\n+/)[1]
    
  # end
  
  
end 

