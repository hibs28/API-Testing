require 'json'
require 'httparty'
require_relative '../lib/parse_json'
require 'dotenv'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end