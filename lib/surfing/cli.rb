class Surfing::CLI 
  
  def call 
    menu 
  end
  
  def list_surf
    # puts "This is a list of the surf spots in California:"
    # puts "
    #   Windansea Beach, La Jolla
    #   Swami’s, Encinitas
    #   Trestles (San Onofre State Beach), San Clemente 
    #   The Wedge, Newport Beach
    #   Huntington Beach Pier, Huntington Beach
    #   Surfrider Beach, Malibu
    #   Rincon Point, Carpinteria
    #   Pismo Beach Pier, Pismo Beach
    #   Asilomar State Beach, Pacific Grove
    #   Mavericks, Half Moon Bay "
      @beaches = Surfing::Surf.areas
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




