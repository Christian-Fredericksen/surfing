class Surfing::CLI 
  
  def call 
    menu 
  end
  
  def list_surf
    # puts "This is a list of the skies areas in Colorado:"
    # puts "
    #   Arapahoe Basin
    #   Aspen Highlands (Aspen)
    #   Aspen Mountain (Aspen) 
    #   Beaver Creek
    #   Breckenridge
    #   Buttermilk (Aspen)
    #   Chapman Hill Ski Area
    #   Copper Mountain
    #   Cranor Ski Area
    #   Crested Butte "
      @beadhes = Surfing::Surf.areas
  end 
   def menu 
     input = nil 
     while input != "exit"
     puts "Welcome to California Surf Spots, to see the list of surf spots please type 'list', or type 'exit' to exit the program."
     input = gets.strip.downcase 
     case input 
     when"1"
     puts "more info about ..."
     when "2"
     puts "more info about ..."
     when "list"
       list_surf
     when "exit"
       farewell
     else 
       puts "Invalid input!"
     end 
   end
   end 
   def farewell 
     puts "Have a great time in California!!"
   end 
end 




