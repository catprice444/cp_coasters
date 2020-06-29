class CpCoasters::Scraper
  attr_accessor :name, :profile_url, :min_height, :thrill_level, :other, :disclaimer, :description, :about

  #first page = name
  # second_page = min_height, thrill_level, other, disclaimer, description

  def self.ride
    kennywood = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))

    # indiv_ride = self.new

    kennywood.each do |park|
    # indiv_ride.about = kennywood.css("div.pcore_tiles_attribicons").each {|all| all['#text']}
      # min_height =
      # thrill_level =
      # other =
    # disclaimer = kennywood.css("div.pcore2_tile_copy").css("i").text
    description = kennywood.css("div.pcore2_tile_copy").css("p").text
    name = kennywood.css("div.pcore2_tile_copy").css("h2").text
  end

    CpCoasters::Coasters.new(name, description)
  end

  # def profile_url
  #   @url = kennywood.css('div.pcore2_tile_copy a').map { |link| link['href'] }
  # end

# binding.pry

end
