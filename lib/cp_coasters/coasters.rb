class CpCoasters::Coasters
  attr_accessor :name, :profile_url, :min_height, :thrill_level, :other, :disclaimer, :description, :about
  @@all = []

  def initialize(name, description)
    @name = name
    @disclaimer = disclaimer
    @description = description

    @@all << self
  end

  def self.all
    @@all
  end
end
