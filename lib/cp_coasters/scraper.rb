class CpCoasters::Scraper
  attr_accessor :name, :description, :min_height, :speed, :duration, :url


  def self.all_rides
    all = []


    kennywood = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
    name = kennywood.css("div.pcore2_tile_copy").css("h2").text
    min_height = kennywood.css("div.pcore2_tile_copy").css("i").text
    binding.pry
    # From the main page-
    #   Need to get name and indiv url

    # From the profile url-
    #   Need to get name, description, min_height, speed, duration


    # all = []
    #
    #   all << self.first_coaster
    #   all << self.second_coaster
    #
    #   all

  end


  def self.indiv_coaster
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

  # def self.first_coaster
  #   first_coaster = self.new
  #   first_coaster.name = "Rollie Pollie"
  #   first_coaster.speed = "70"
  #   first_coaster.description = "Outlaws Blackjack, Chess and Digger have returned to Frontier Town to reclaim what had been taken by Maverick years before. And they came back with a vengeance. Their creation was so bold that it created a new category of roller coaster: the hyper-hybrid. Steel Vengeance is a world-record breaker with a resume unmatched by any other coaster in the world. Steel Vengeance is the world's longest hybrid coaster that packs in almost 30 seconds of airtime - the most airtime on ANY roller coaster in the world - along with twists, turns and close calls during the 2 minute, 30 second ride. Drop 200 feet at 90 degrees and topple through 4 head-over-boots inversions through wood, steel and mayhem. Saddle up for the ride of your life and try to keep your wits about you. Cedar Point's roller coaster legacy continues...Frontier Town will never be the same."
  #   first_coaster.min_height = "48"
  #   first_coaster.duration = "2"
  #
  #   first_coaster
  # end
  #
  # def self.second_coaster
  #   second_coaster = self.new
  #   second_coaster.name = "Thomas the Train"
  #   second_coaster.speed = "10"
  #   second_coaster.description = "Fun for the whole family"
  #   second_coaster.min_height = "50"
  #   second_coaster.duration = "3"
  #
  #   second_coaster
  # end
end
