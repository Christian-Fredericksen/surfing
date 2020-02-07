class Surfing::CLI 
  
  def call
    list_beaches
    menu 
  end
  
  def list_beaches
    puts "\n\nWelcome to the 10 Best Surf Spost in Califrnia!
     (in no particular order)\n\n"
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
      @beaches.each.with_index(1) do |beach, i|
        puts "#{i}. #{beach.name} - #{beach.url}\n\n"
      end
  end
   def menu
    input = nil 
    while input != "later"
      puts "\nPlease enter the number of the surf spot you'd like to visit
  or type 'later' to exit the program.\n\n"
       input = gets.strip.downcase
       
       if input.to_i > 0
         the_beach = @beaches[input.to_i-1]
         puts "#{the_beach.name} - #{the_beach.url}\n\n"
       elsif input == "list"
         list_beaches
         puts "\nWhich surf spot would you like to know more about? \n\n"
       elsif input == "later"
         wipeout
       else 
         puts "\nInvalid input!"
       end 
     end
   end 
   
   def wipeout 
     puts "\nHave a great time in California!!\n\n"
   end
   
end 




