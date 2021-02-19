# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  attr_reader :url

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(self.url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    # we use the JSON library to parse the API response into nicely formatted JSON
      request = JSON.parse(self.get_response_body)
      request.collect do |program|
        program  
      end
    end 

end

