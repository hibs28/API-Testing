require 'spec_helper'

describe PostcodeIO do 
  before(:all) do
    @multiple_postcode_service = PostcodeIO.new.multiple_postcode_service
    @array = ["E201AD","RM109TX", "RM78JX"]
    @multiple_postcode_service.multiple_postcode_request(@array)
  end

  it 'should respond with a status code of 200' do
    expect(@multiple_postcode_service.retrieve_status_code).to eq 200
  end
  
  it 'should have two postcodes' do
    expect(@multiple_postcode_service.retrieve_result.length).to eq @array.length
  end

  it 'should have E20 1AD and RM10 9TX' do
    @multiple_postcode_service.retrieve_result.each_index{ |i| expect(@multiple_postcode_service.retrieve_per_query_name(i)).to eql(@array[i])}
  end 

  context 'should have correct results for first entry in multiple requests' do 
    it  'should be a float for longitude' do 
      expect(@multiple_postcode_service.retrieve_longitude).to be_kind_of(Float)
    end
  end
end