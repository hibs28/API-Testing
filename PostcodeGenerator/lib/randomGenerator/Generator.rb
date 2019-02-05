require_relative './services/RandomPostcodes'

class Generator
  def postcodes
    RandomPostcodes.new
  end

end