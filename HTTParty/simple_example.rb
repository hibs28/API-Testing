require 'httparty'

response = HTTParty.get('http://bbc.co.uk')

puts response.code
puts response.message
puts response.headers.inspect