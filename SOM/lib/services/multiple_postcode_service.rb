require 'httparty'
require 'json'

class MultiplePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io/'

  def multiple_postcode_request(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post('/postcodes', body: {"postcodes" => postcodes_array }).body)
  end

  def retrieve_status_code
    @multiple_postcode_data['status']
  end

  def retrieve_result
    @multiple_postcode_data['result']
  end
end

# test = MultiplePostcodeService.new
# test.multiple_postcode_request(["OX49 5NU", "M32 0JG", "NE30 1DP"])
# test.print_response