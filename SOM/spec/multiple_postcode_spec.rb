require 'spec_helper'

describe PostcodeIO do 

  context 'requesting information from the multiple service works correctly' do
    before(:all) do
      @multiple_postcode_service = PostcodeIO.new.multiple_postcode_service
      @multiple_postcode_service.multiple_postcode_request(["E201AD","RM109TX"])
    end

    # it 'should respond with a status code of 200' do
    #   expect(@multiple_postcode_service.retrieve_status_code).to eq 200
    # end
    
    # it 'should have two postcodes' do
    #   expect(@multiple_postcode_service.retrieve_result.length).to eq 2
    # end

    it 'should have E20 1AD and RM10 9TX' do
      include("foo").and include("bar")

      @multiple_postcode_service.retrieve_result.each_index{ |i|
         expect(@multiple_postcode_service.retrieve_per_query_name(i)).to all(include ("E201AD").or include("RM10 9TX")
      }

    end 

  end

end