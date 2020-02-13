class Surfing::CLI 
  
  def call
    greeting
    menu 
  end
  
  def greeting
    puts "\n\nWelcome to the 10 MOST RADICAL and GNARLY surf spots EVER in California!"
    puts "(Hyperbole Rules!)"
  end 
  
   def menu
     input = nil
     puts "\n\nBruh! Wanna see a list of pier pounders? Just enter 'list' 
or type 'later' to exit the program.\n\n"
    while input != "later"
    input = gets.strip.downcase
    
   #if input.to_i > 0 && input.to_i < Surf.scrape_beach.length+1
     
        # the_beach = @beaches[input.to_i-1]
        # the_info = @info[input.to_i-1]
        # puts "\nBEACH: #{the_beach}\n"
        # puts "\nTo see another beach enter a digit,\nor 'list' to see them all again,\nor 'later' to bail.\n\n"
   
   
       
      
      if  input.to_i > 0 && input.to_i < Surf.scrapped_data.length+1
      puts Surf.scrapped_data[input.to_i-1]
      puts Surf.scrapped_data[input.to_i-1]
      
        # the_info = @info[input.to_i-1]
        # puts "\nBEACH: #{the_beach}\nINFO: #{the_info}"
        # puts "\nTo see another beach enter a digit,\nor 'list' to see them all again,\nor 'later' to bail.\n\n"
        
       elsif input == "list"
         list_beaches
       elsif input == "later"
         shaka
       else 
         puts "\nWHOA! Bad move, Barney! Try again or say 'later':\n\n"
       end
     end
   end 
    
  
  
  def list_beaches
    
    puts "\n\nCheck out this list!\nFrom catching 'the drop'\nto getting 'worked',\nthese are the sets to catch!"
     puts "(in no particular order)\n\n"
   
      @beaches = Surf.scrapped_data
      @beaches.each.with_index(1) do |beach, i|
       
        puts "#{i}. #{beach}"
      end
      puts "\nWanna 'get wet'?\nEnter a digit, dude.\nOr 'later' to bail.\n\n"
      #@location = Beaches.beach
  end
  
   
   def shaka 
     puts "\nHave a great time in California!!\n\n"
     exit
   end
   
end 




