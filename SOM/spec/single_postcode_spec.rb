require 'spec_helper'

describe PostcodeIO do 

  context 'requesting information from the single service works correctly' do
    before(:all) do
      @single_postcode_service = PostcodeIO.new.single_postcode_service
      @single_postcode_service.single_postcode_request('E201AD')
    end

    it 'should respond with a status code of 200' do
      expect(@single_postcode_service.retrieve_status_code).to eq 200
    end

    it 'should be between 1-9 for quality' do 
      expect(@single_postcode_service.retrieve_quality).to be_between(1,9)
    end

    it 'should be a float for latitude' do 
      expect(@single_postcode_service.retrieve_latitude).to be_kind_of(Float)
    end

    it  'should be a float for longitude' do 
      expect(@single_postcode_service.retrieve_longitude).to be_kind_of(Float)
    end
    
    it 'should be empty for admin county' do 
      expect(@single_postcode_service.retrieve_admin_county).to be_nil
    end
  end
end