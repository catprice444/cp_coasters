class CpCoasters::CLI

  def call
    puts "Welcome to Cedar Park!"
    # rollercoasters
    CpCoasters::Coasters.rollercoasters
  end

end 
