class CpCoasters::Coasters
  attr_accessor :name, :min_height, :thrill_level, :other, :disclaimer, :description, :about
  @@all = []


  def initialize(name, about, disclaimer, description)
    @name = name
    @disclaimer = disclaimer
    @description = description
    @about = about

    @@all << self
  end

  def self.all
    @@all
  end
end
