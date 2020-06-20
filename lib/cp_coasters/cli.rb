class CpCoasters::CLI

  def call
    puts "Welcome to Cedar Park!"
    rollercoasters
  end

  def rollercoasters
    puts ""
    puts "Which Rollercoaster would you like to learn more about? Enter a number between 1-18."
      @rides = CpCoasters::Coasters.all_rides
      @rides.each.with_index(1) do |ride, i|
        puts "#{i}. #{ride.name}"
      end

    input = gets.strip
    indiv_ride = @rides[input.to_i-1]
      puts ""
      puts "#{indiv_ride.name}"
      puts "#{indiv_ride.min_height}, #{indiv_ride.speed}, #{indiv_ride.description}"
    

    puts ""
    puts "Are you finished looking at rollercoasters? Enter 'yes' or 'no'."
    input = gets.strip.downcase

      if input == "no"
        rollercoasters
      elsif input == "yes"
        puts ""
        puts "Enjoy your stay at Cedar Park!!"
        exit
      else
        puts ""
        puts "Sorry I don't understand"
        rollercoasters
      end
  end
end
