class API

    def self.find_cocktail_by_ingredient(ingredient)
        url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{ingredient}"
        uri = URI(url)
        rest = Net::HTTP.get(uri) #response
        binding.pry
    end 

end 