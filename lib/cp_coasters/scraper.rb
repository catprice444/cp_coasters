require 'nokogiri'
require 'open-uri'

class CpCoasters::Scraper

  def self.all_coasters
    doc = Nokogiri::HTML(open("https://www.cedarpoint.com/play/rides-coasters"))
    binding.pry
  end

  def self.indiv_coaster
  end

end
