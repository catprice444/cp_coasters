class CpCoasters::CLI

  def call
    puts "Welcome to Cedar Park!"
    rollercoasters
  end

  def rollercoasters
    puts ""
    puts "Which Rollercoaster would you like to learn more about? Enter a number between 1-18."
    input = gets.strip
    if input == "1"
      puts "The First coaster"
    elsif input == "2"
      puts "The Second coaster"
    else
      puts "Sorry I don't understand"
    end
    # ride = CpCoasters::Coasters.find(input.to_i)
    #
    # print_rollercoaster(ride)

    puts "Are you finished looking at rollercoasters? Enter 'yes' or 'no'."
    input = gets.strip.downcase
      if input == "no"
        rollercoasters
      elsif input == "yes"
        puts "Enjoy your stay at Cedar Park!!"
        exit
      else
        puts "Sorry I don't understand"
        rollercoasters
      end

    def print_rollercoaster(ride)

    end
  end



end
