class CpCoasters::Scraper
  attr_accessor :name, :short_description, :disclaimer, :url, :min_height, :thrill_level, :slogan

  # first page = name, short description, disclaimer, url
  # second page = min_height, thrill_level, slogan

  # def self.first_page

  #   kennywood = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))
  #
  #   disclaimer = kennywood.css("div.pcore2_tile_copy").css("i").text
  #   short_description = kennywood.css("div.pcore2_tile_copy").css("p").text
  #   name = kennywood.css("div.pcore2_tile_copy").css("h2").text
  #   url = kennywood.css()
  #
  # end

  def self.second_page(url)

    indiv_ride = Nokogiri::HTML(open("url"))

    all = {}
    indiv_ride.css("div.default_button").each do |info|
      if info.css("span.title_attribute").text.include?("Minimum Height")
        all[:min_height] = info.css("span.title_value").text

      elsif info.css("span.title_attribute").text.include?("Thrill Level")
        all[:thrill_level] = info.css("span.title_value").text

      end

      all[:slogan] = indiv_ride.css("div.container").css("h2").first.text

      all
    end
  # end




binding.pry

end
