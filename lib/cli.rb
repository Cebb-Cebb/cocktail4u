class CLI
    def run
        welcome
        ingredient_selection
    end
    
    def welcome
        puts "Welcome"
    end 

    def ingredient_selection
        puts "type an ingredient you want to build a cocktail with"
        input = gets.strip.downcase
        API.find_cocktail_by_ingredient(input)
    end 

end 