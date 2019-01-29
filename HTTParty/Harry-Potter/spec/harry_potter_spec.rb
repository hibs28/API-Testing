require 'spec_helper'

describe 'harry potter api' do
  before(:all) do 
    @api_key = ENV['HP_API_KEY']
    @harrypotter_response = ParseJson.new(HTTParty::get("https://www.potterapi.com/v1/characters/latest?key=#{@api_key}").body).json_data
  end    
  end
end
