require 'spec_helper'

describe PostcodeIO do 

  context 'requesting information from the single service works correctly' do
    before(:all) do
      @single_postcode_service = PostcodeIO.new.single_postcode_service
      @single_postcode_service.single_postcode_request('RM109TX')
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

    it 'should be between 6 to 8 characters for postcode' do 
      expect(@single_postcode_service.retrieve_postcode.length).to be_between(6,8)
    end 

    it 'should have the first part of the postcode to be outcode' do 
    expect(@single_postcode_service.retrieve_postcode.split[0]).to eq(@single_postcode_service.retrieve_outcode)
    end 

    it 'should have the last part of the postcode to be incode' do 
    expect(@single_postcode_service.retrieve_postcode.split[1]).to eq(@single_postcode_service.retrieve_incode)
    end 

    it 'should have a hash called code' do 
      expect(@single_postcode_service.retrieve_code).to be_kind_of(Hash)
    end 

    it 'should have eastings as an Integer' do 
      expect(@single_postcode_service.retrieve_eastings).to be_kind_of(Integer)
    end

    it 'should have northings as an Integer' do 
      expect(@single_postcode_service.retrieve_northings).to be_kind_of(Integer)
    end

    it 'should have a uk longitude' do
      expect(@single_postcode_service.retrieve_longitude).to be_between(-7.64133, 1.75159)
    end

    it 'should have a uk latitude' do
      expect(@single_postcode_service.retrieve_latitude).to be_between(50.10319, 60.15456)
    end
  end
end