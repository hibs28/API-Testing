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

  def retrieve_per_query(number) 
    @multiple_postcode_data['result'][number]
  end

  def retrieve_per_query_name(number)
    retrieve_per_query(number)['query']
  end 

  def retrieve_per_query_result
    retrieve_per_query[1]
  end

  def retrieve_postcode
    retrieve_per_query_result['postcode']
  end
  
  def retrieve_latitude
    retrieve_per_query_result['latitude']
  end

  def retrieve_longitude
    retrieve_per_query_result['longitude']
  end

  def retrieve_admin_county
    retrieve_per_query_result['admin_county']
  end

  def retrieve_quality(number)
    retrieve_per_query(number)['query'][1]
    ['quality']
  end

  def retrieve_post
    retrieve_per_query_result['postcode']
  end

  def retrieve_outcode
    retrieve_per_query_result['outcode']
  end

  def retrieve_incode
    retrieve_per_query_result['incode']
  end

  def retrieve_northings
    retrieve_per_query_result['northings']
  end
  
  def retrieve_eastings
    retrieve_per_query_result['eastings']
  end

  def retrieve_code
    retrieve_per_query_result['codes']
  end
end