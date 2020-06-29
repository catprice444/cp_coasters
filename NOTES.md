
NOTES
1. Welcomes user to app
2. pull rollercoaster page
3. then allow users to see the selection of rollercoasters (with a number)
4. user inputs number of selection
5. rollercoaster associated with number opens
6. shows appropriate information for rollercoaster
7. then asked if user wants to go back to list or exit


# first page = name, short description, disclaimer, url
# second page = min_height, thrill_level, slogan

# def self.first_page

  hersey_park = Nokogiri::HTML(open("https://www.hersheypark.com/explore-the-park/rides/?ride_types%5B%5D=1"))
#
#   disclaimer = kennywood.css("div.pcore2_tile_copy").css("i").text
#   short_description = kennywood.css("div.pcore2_tile_copy").css("p").text
  # name = kennywood.css("div.pcore2_tile_copy").css("h2").text
    url = kennywood.css('div.txt a').map { |link| link['href'] }
    # min_height = kennywood.css("div.pcore_tiles_attribicons").children.text
# end


# indiv_ride = Nokogiri::HTML(open("url"))

# all = {}
# kennywood.css("div.pcore_tiles_attribicons").each do |info|
#   if info.css("span").text.include?("Minimum Height")
#     all[:min_height] = info.css("div").children.text
#
#   elsif info.css("span").text.include?("Thrill Level")
#     all[:thrill_level] = info.css("div").children.text
#
#   end
#
#   # all[:slogan] = indiv_ride.css("div.container").css("h2").first.text
#
#   all
# end
# # def self.second_page(url)

  # indiv_ride = Nokogiri::HTML(open("url"))
  #
  # all = {}
  # indiv_ride.css("div.default_button").each do |info|
  #   if info.css("span.title_attribute").text.include?("Minimum Height")
  #     all[:min_height] = info.css("span.title_value").text
  #
  #   elsif info.css("span.title_attribute").text.include?("Thrill Level")
  #     all[:thrill_level] = info.css("span.title_value").text
  #
  #   end
  #
  #   all[:slogan] = indiv_ride.css("div.container").css("h2").first.text
  #
  #   all
  # end
# end




binding.pry

end
