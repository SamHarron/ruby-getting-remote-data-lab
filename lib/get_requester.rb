# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'


class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        #ap (the test fails if ap is used)
        JSON.parse(get_response_body)
    end

     
   # def parse_json
    #    name = JSON.parse(get_response_body)
    #    name.collect do |name|
    #        name['name']
     #   end
    #end

   # def parse_json_job
      #  job = JSON.parse(get_response_body)
       # job.collect do |job|
          #  job['occupation']
        #end
   #end    
end