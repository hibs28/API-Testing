require 'httparty'
require 'json'

class RandomPostcodes
  include HTTParty
  base_uri 'http://api.postcodes.io'

  def random_array(number_of_postcodes)
    # return array with specified number of postcodes inside 
    array = []
    number_of_postcodes.times{array << generate_random_postcode}
    array
  end

  def generate_random_postcode
    json_result = JSON.parse(self.class.get('/random/postcodes').body)
    random_postcode = json_result['result']['postcode']
  end
end

test = RandomPostcodes.new
p test.random_array(rand(2..10))