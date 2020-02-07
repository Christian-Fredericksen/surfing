class Surfing::CLI 
  
  def call
    list_surf
    menu 
  end
  
  def list_surf
    puts "\n\nWelcome to the 10 Best Surf Spost in Califrnia!
     (in no particular order)\n"
    # puts "
    # 1) Windansea Beach, La Jolla
    # 2) Swami’s, Encinitas
    # 3) Trestles (San Onofre State Beach), San Clemente 
    # 4) The Wedge, Newport Beach
    # 5) Huntington Beach Pier, Huntington Beach
    # 6) Surfrider Beach, Malibu
    # 7) Rincon Point, Carpinteria
    # 8) Pismo Beach Pier, Pismo Beach
    # 9) Asilomar State Beach, Pacific Grove
    # 10) Mavericks, Half Moon Bay\n\n"
      @beaches = Surf.areas
  end
   def menu
    input = nil 
    while input != "later"
    puts "\nPlease enter the number of the surf spot you'd like to visit
or type 'later' to exit the program.\n\n"
       input = gets.strip.downcase 
       case input 
       when"1"
       puts "\nmore info about ..."
       when "2"
       puts "\nmore info about ..."
       when "list"
         list_surf
         puts "\nWhich surf spot would you like to know more about? \n\n"
       when "later"
         wipeout
       else 
         puts "Invalid input!"
       end 
     end
   end 
   def wipeout 
     puts "\nHave a great time in California!!\n\n"
   end 
end 




