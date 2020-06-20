class CpCoasters::CLI

  def call
    puts "Welcome to Cedar Park!"
    rollercoasters
  end

  def rollercoasters
    puts ""
    puts "Which Rollercoaster would you like to learn more about? Enter a number between 1-18."
    input = gets.strip.to_i
      if input == "1"
        puts "1. Blue Streak - The Must Ride Classic - 48 inches"
      elsif input == "2"
        puts "2. Mine Ride - Mine for Thrills - 48 inches"
      else
        puts "Sorry I don't understand"
      end

    # coaster = CpCoasters::Coasters.find(input.to_i)

    # print_rollercoaster(coaster)

    puts "Are you finished looking at rollercoasters? Enter 'yes' or 'no'."
    input = gets.strip.downcase
      if input == "yes"
        rollercoasters
      elsif input == "no"
        puts "Enjoy your stay at Cedar Park!!"
        exit
      else
        puts "Sorry I don't understand"
        rollercoasters
      end
  end



end

# 1. Blue Streak - The Must Ride Classic - 48 inches
# 2. Mine Ride - Mine for Thrills - 48 inches
