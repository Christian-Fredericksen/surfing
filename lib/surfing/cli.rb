class Surfing::CLI 
  
  def call
    greeting
    menu 
  end
  
  def greeting
    puts "\n\nWelcome to the 10 MOST RADICAL and GNARLY surf spots EVER in Califrnia!"
    puts "(Hyperbole Rules!)"
  end 
  
   def menu
     puts "\n\nBruh! Wanna see a list of pier pounders? Just enter 'list' 
or type 'later' to exit the program.\n\n"
    input
   end
   
   def input
     input = nil 
    while input != "later"
      
       input = gets.strip.downcase
       
       if input.to_i > 0
         the_beach = @beaches[input.to_i-1]
         puts "\n#{the_beach.name}\n#{the_beach.url}\n#{the_beach.shop}\n#{the_beach.shop_url}\n#{the_beach.food}\n#{the_beach.food_url}\n"
         puts "\nTo see another beach enter a digit,\nor 'list' to see them all again,\nor 'later' to bail.\n\n"
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
    puts "\n\nCheck out this list! From catching 'the drop'\nto getting 'worked',\nthese are the sets to catch!"
     puts "(in no particular order)\n\n"
   
      @beaches = Surf.areas
      @beaches.each.with_index(1) do |beach, i|
        puts "#{i}. #{beach.name}" #- #{beach.url}\n\n"
      end
      
      puts "\nWanna 'get wet'?\nEnter a digit, dude.\nOr 'later' to bail.\n\n"
      input
  end
  
   
   def shaka 
     puts "\nHave a great time in California!!\n\n"
     exit
   end
   
end 




