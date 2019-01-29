# super class
require_relative 'services/single_postcode_service'
require_relative 'services/multiple_postcode_service'

class PostcodeIO 
  def single_postcode_service
    SinglePostcodeService.new
  end

  def multiple_postcode_service
    MultiplePostcodeService.new
  end
end

# postcode_api = PostcodeIO.new
# puts postcode_api.multiple_postcode_service.multiple_postcode_request(["OX49 5NU", "M32 0JG", "NE30 1DP"])
