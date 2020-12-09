class API

    def self.find_cocktail_by_ingredient(ingredient)
        url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{ingredient}"
        uri = URI(url)
        rest = Net::HTTP.get(uri) #response
        json = JSON(rest)
        json["drinks"].each do  |drink|
            # Cocktail.new
            hash = {:id => drink["idDrink"], :name => drink["strDrink"], :category => drink["strCategory"], :type => drink["strAlcoholic"], :instructions => drink["strInstructions"]}
            binding.pry

        end
    end 

end 