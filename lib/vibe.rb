require "vibe/version"
require 'unirest'

module Vibe

	def self.lookup(email, key)
		response = Unirest.get "https://z1.vibeapp.co/api/v1/profile_lookup/", 
                        headers:{ "Accept" => "application/json" }, 
                        parameters:{ :key => key, :person_email => email }
        return response.body
	end


	def self.stats(key)
		response = Unirest.get "https://z1.vibeapp.co/api/v1/stats/", 
                        headers:{ "Accept" => "application/json" }, 
                        parameters:{ :key => key}
        return response.body
	end

	def self.get_key(email, password)
		response = Unirest.post "https://z1.vibeapp.co/api/v1/get_key/", 
                        headers:{ "Accept" => "application/json" }, 
                        parameters:{ :email => email, :password => password}
        return response.body
	end

end
