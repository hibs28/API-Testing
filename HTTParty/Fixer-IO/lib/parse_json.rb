require 'json'

# reads the json file class
class ParseJson
  attr_accessor :json_data
  
  def initialize(json)
    @json_data = JSON.parse(json)
  end
  p @json_data
end