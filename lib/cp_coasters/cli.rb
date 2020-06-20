class CpCoasters::CLI

  def call
    list
    selection
  end

  def list
    puts "Welcome to Cedar Park!"
    puts "Which Rollercoaster would you like to learn more about?
    1. Blue Streak
    2. Mine Ride"
  end

  def selection
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input == "1"
        puts "1. Blue Streak - The Must Ride Classic - 48 inches"
      elsif input == "2"
        puts "2. Mine Ride - Mine for Thrills - 48 inches"
      else
        "Please enter a number within the list"
      # should later make this a statement that pulls from the numbered list and shows 1 through the amount of coasters available
      end
    end
  end
end

# 1. Blue Streak - The Must Ride Classic - 48 inches
# 2. Mine Ride - Mine for Thrills - 48 inches
