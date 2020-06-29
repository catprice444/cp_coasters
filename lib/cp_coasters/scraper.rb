class CpCoasters::Scraper
  attr_accessor :name, :url, :min_height, :thrill_level, :other, :disclaimer, :description, :about

  #first page = name
  # second_page = min_height, thrill_level, other, disclaimer, description

  @@all = []

  def self.all_rides
  @@all << self.indiv_ride
  end

  def self.indiv_ride

  kennywood = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))

    about = kennywood.css("div.pcore_tiles_attribicons").each {|all| all['#text']}
      # min_height =
      # thrill_level =
      # other =

    disclaimer = kennywood.css("div.pcore2_tile_copy").css("i").text

    description = kennywood.css("div.pcore2_tile_copy").css("p").text

    name = kennywood.css("div.pcore2_tile_copy").css("h2").text

    url = kennywood.css('div.pcore2_tile_copy a').map { |link| link['href'] }

  end

# binding.pry

end
