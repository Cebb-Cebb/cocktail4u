class API

    def self.find_cocktail_by_ingredient(ingredient)
        url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{ingredient}"
        uri = URI(url)
        rest = Net::HTTP.get(uri) #response
        json = JSON(rest)
        json["drinks"].each do  |drink|
            hash = {:id => drink["idDrink"], :name => drink["strDrink"], :category => drink["strCategory"], :type => drink["strAlcoholic"], :instructions => drink["strInstructions"]}
            # binding.pry
            cocktail = Cocktail.new(hash)
            ingredients = [drink["strIngredient1"], drink["strIngredient2"], drink["strIngredient3"], drink["strIngredient4"], drink["strIngredient5"], drink["strIngredient6"], drink["strIngredient7"], drink["strIngredient8"], drink["strIngredient9"], drink["strIngredient10"]]
            ingredients.compact.each do |i|
              object = Ingredient.new(i)
              cocktail.ingredients << object
            end
        end
        binding.pry 
    end 

end 