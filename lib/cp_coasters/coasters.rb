class CpCoasters::Coasters
  attr_accessor :name, :description, :min_height, :speed, :duration

  def self.ride_list
    self.scrape_rides
  end

  def self.scrape_rides
    rides = []
    rides << self.ride_information

    rides
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
