class CpCoasters::Coasters
  attr_accessor :name, :description, :min_height, :speed, :duration

  def self.all_rides
    self.scrape_all
  end

  def self.scrape_all
    all = []
    all << self.all_coasters

    all
  end

  def self.all_coasters
    puts "First Coaster"
    puts "Second Coaster"
  end


  def self.indiv_ride_list
    self.scrape_ride_name
  end

  def self.scrape_ride_name
    ride_names = []
    ride_names << self.ride_information

    ride_names
  end

  def self.ride_information
    ride = self.new

    ride.name = "Rollercoaster"
    ride.description = "I'm fun!"
    ride.min_height = "48 inches"
    ride.speed = "FAST"
    ride.duration = "2 minutes"

    ride
  end
end
