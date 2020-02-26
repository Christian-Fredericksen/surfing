class Scraper
  def self.scraped_data
    html = open('https://wanderwisdom.com/travel-destinations/A-Locals-Guide-to-Orange-County-Beaches')
    doc = Nokogiri::HTML(html)
    container = doc.css("div.full.module.moduleText")
    container.each do |b|
      name = b.css("h2.subtitle").text.strip
      info = b.css("p").text.strip
       Surf.new(name, info) unless name == "Surfing California" || name == ""
    end
  end
end 