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
  end

end