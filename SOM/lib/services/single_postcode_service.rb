require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  # include the base URI
  base_uri 'https://api.postcodes.io/'

  def single_postcode_request(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end
  
  def print_response
    p @single_postcode_data
  end

  def retrieve_status_code
    @single_postcode_data['status']
  end

  def retrieve_result
    @single_postcode_data['result']
  end

  def retrieve_postcode
    retrieve_result['postcode']
  end
  
  def retrieve_latitude
    retrieve_result['latitude']
  end

  def retrieve_longitude
    retrieve_result['longitude']
  end

  def retrieve_admin_county
    retrieve_result['admin_county']
  end

  def retrieve_quality
    retrieve_result['quality']
  end

  def retrieve_post
    retrieve_result['postcode']
  end

  def retrieve_outcode
    retrieve_result['outcode']
  end

  def retrieve_incode
    retrieve_result['incode']
  end

  def retrieve_code
    retrieve_result['codes']
  end
end

   test = SinglePostcodeService.new

   test.single_postcode_request('rm109tx')
  p test.retrieve_code