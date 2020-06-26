class CpCoasters::Scraper

  def all_rollercoasters
    doc = Nokogiri::HTML(open("https://www.cedarpoint.com/play/rides-coasters"))
    binding.pry
  end

  def indiv_rollercoaster
  end

end
