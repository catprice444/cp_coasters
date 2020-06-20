class CpCoasters::Coasters
  attr_accessor :name, :description, :min_height, :speed, :duration

  def self.all_rides
    self.scrape_all
  end

  def self.scrape_all
    all = []
    # all << self.coasters
    all << self.first_coaster
    all << self.second_coaster
    all
  end

  # def self.coasters
    # coaster = self.new
    # coaster.name =
    # coaster.speed =
    # coaster.description =
    # coaster.min_height = 
    # coaster.duration =

    # coaster
  # end

  def self.first_coaster
    first_coaster = self.new
    first_coaster.name = "Rollie Pollie"
    first_coaster.speed = "70 mph"
    first_coaster.description = "I roll and tumble"
    first_coaster.min_height = "48 inches"
    first_coaster.duration = "2 minutes"

    first_coaster
  end

  def self.second_coaster
    second_coaster = self.new
    second_coaster.name = "Thomas the Train"
    second_coaster.speed = "10 mph"
    second_coaster.description = "Fun for the whole family"
    second_coaster.min_height = "50 inches"
    second_coaster.duration = "3 minutes"

    second_coaster
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
