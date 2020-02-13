class Surfing::CLI 
  
  def call
    Surf.scraped_data
    greeting
    menu 
  end
  
  def greeting
    puts "\n\nWelcome to the 10 MOST RADICAL and GNARLY surf spots EVER in California!"
    puts "(Hyperbole Rules!)"
  end 
  
   def menu
     input = nil
     puts "\n\nBruh! Wanna see a list of pier pounders?\nJust enter 'list'\nor type 'later' to exit the program.\n\n"
    while input != "later"
    input = gets.strip.downcase
       if input == "list"
         list_beaches
       elsif input == "later"
         shaka
       else 
         puts "\nWHOA! Bad move, Barney! Try again or say 'later':\n\n"
       end
     end
   end 
    
  
  
  def list_beaches
    input = nil
    puts "\n\nCheck out this list!\nFrom catching 'the drop'\nto getting 'worked',\nthese are the sets to catch!"
     puts "(in no particular order)\n\n"
      @beaches = Surf.all
      @beaches.each.with_index(1) do |beach, i|
        puts "#{i}. #{beach.name}"
      end
      puts "\nWanna 'get wet'?\nEnter a digit, dude.\nOr 'later' to bail.\n\n"
      while input != "later"
    input = gets.strip.downcase
      if  input.to_i > 0 && input.to_i < Surf.all.length+1
      puts "BEACH: #{Surf.name}\n"##{Surf.info}"
       elsif input == "later"
         shaka
       else 
         puts "\nWHOA! Bad move, Barney! Try again or say 'later':\n\n"
       end
     end
  end
  
   
   def shaka 
     puts "\nHave a great time in California!!\n\n"
     exit
   end
   
end 




