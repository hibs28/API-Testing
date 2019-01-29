require 'spec_helper'

describe 'fixerio api' do 
  before (:all) do
    @api_key = ENV['FIXER_API_KEY']
    @fixer_data_response = ParseJson.new(HTTParty::get("http://data.fixer.io/api/latest?access_key=#{@api_key}").body).json_data
  end

  it 'should be a hash' do
    expect(@fixer_data_response).to be_kind_of(Hash)
  end

  it "should contain the base as EUR" do     
    expect(@fixer_data_response["base"]).to eq "EUR"   
  end

  it "Should have a date string" do     
    expect(@fixer_data_response["date"]).to be_kind_of(String)   
  end
  it "should countain 168 rates" do   
    @key_num = 0    
    @value_num = 0
    @fixer_data_response["rates"].each do |k,v|      
      @key_num += 1     
      @value_num += 1     
    end
    expect(@key_num).to eq 168    
    expect(@value_num).to eq 168   
  end

  it "should all rates should be Floats or Integer" do     
    @fixer_data_response["rates"].each do |k,v| expect(v).to be_kind_of(Float).or be_kind_of(Integer)   
  end
  end
end