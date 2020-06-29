class CpCoasters::Coasters
  attr_accessor :name, :short_description, :disclaimer, :url, :min_height, :thrill_level, :slogan


  def self.rollercoasters
    puts ""
    puts "Which Rollercoaster would you like to learn more about? Enter a number between 1-48."
      @rides = CpCoasters::Scraper.all_rides
      #
      @rides.each.with_index(1) do |ride, i|
        puts "#{i}. #{ride.name}"
      end

    input = gets.strip
    indiv_ride = @rides[input.to_i-1]
      puts ""
      puts "Name:           #{indiv_ride.name}"
      puts "About:          #{indiv_ride.about}"
      puts "Disclaimer:     #{indiv_ride.speed} mph"
      puts "Url:            #{indiv_ride.url}"
      puts ""
      puts "Description:"
      puts "#{indiv_ride.description}"

    #
    puts ""
    puts "Are you finished looking at rollercoasters? Enter 'yes' or 'no'."
    input = gets.strip.downcase
    #
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
