
NOTES
1. Welcomes user to app
2. pull Cedar Park rollercoaster page
3. then allow users to see the selection of rollercoasters (with a number)
4. user inputs number of selection
5. rollercoaster associated with number opens
6. shows appropriate information for rollercoaster
7. then asked if user wants to go back to list or exit

working scrapes:
kennywood = Nokogiri::HTML(open("https://www.kennywood.com/attractions"))

disclaimer = kennywood.css("div.pcore2_tile_copy").css("i").text
description = kennywood.css("div.pcore2_tile_copy").css("p").text -->
name = kennywood.css("div.pcore2_tile_copy").css("h2").text
