class Surfing::CLI
  
  def call
    Surf.scraped_data
    greeting  
  end
  
  def greeting
    puts "\n\nWelcome to the 10 MOST RADICAL and GNARLY surf spots EVER in California!"
    puts "(Hyperbole Rules!)"
    menu 
  end 
  
   def menu
     puts "\n\nBruh! Wanna see a list of pier pounders?\nJust enter 'list'\nor type 'later' to exit the program.\n\n"
     input = gets.strip.downcase
       if input == "list"
         list_beaches
       elsif input == "later"
         shaka
       else 
         puts "\nWHOA! Bad move, Barney! Try again or say 'later':\n\n"
         menu
        
       end
   end
   
   
   
  def list_beaches
    puts "\n\nCheck out this list!\nFrom catching 'the drop'\nto getting 'worked',\nthese are the sets to catch!"
    puts "(in no particular order)\n\n"
      @beaches = Surf.all
      @beaches.shift
      @beaches.pop
      @@list = @beaches
      @beaches.each.with_index(1) do |beach, i|
        puts "#{i}. #{beach.name}"
      end
      puts "\nWanna 'get wet'?\nEnter a digit, dude.\nOr 'later' to bail.\n\n"
      surf_entry
  end 
  
  def surf_entry
      input = gets.strip.downcase
        if input.to_i > 0 && input.to_i <= Surf.all.count
        show_info(input)
       
        elsif input == "later"
        shaka
        elsif input == "list"
        re_list
        
        else 
          puts "\nWHOA! Bad move, Barney! Try again or say 'later'\n\n"
        surf_entry
        end
  end
     
     def re_list
        @@list.each.with_index(1) do |beach, i|
        puts "#{i}. #{beach.name}"
     end
     puts "\nWanna 'get wet'?\nEnter a digit, dude.\nOr 'later' to bail.\n\n"
      surf_entry
   end 
     
  def show_info(input)
    d = Surf.find(input)
          puts "\nBEACH:\n#{d.name}\n\nINFO:\n#{d.info}\n\n"
          puts "\nWanna see something else?\nEnter a digit, dude.\nOr 'list' to see them all again.\nOr 'later' to bail.\n\n"
          surf_entry
  end 
  
   def shaka 
     puts "\nHave a great time in California!!\n\n"
   end
   
end 




