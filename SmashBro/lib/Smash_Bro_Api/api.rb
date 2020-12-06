class Api
    #def self.base_url
    #    "http://smashlounge.com/api/chars/all?limit=5"
    #end
    
    def self.get_data
        response = RestClient.get("http://smashlounge.com/api/chars/all")
        data = JSON.parse(response.body)
        
        data.each do |smash_Bro_data|
            SmashBro.new(smash_Bro_data["name"], smash_Bro_data["guide"], smash_Bro_data["tierdata"], smash_Bro_data["weight"])
        end
        #binding.pry
    end
end