class CLI 
    def run
        welcome
        ingredient_selection
        user_input_validation
    end
    
    def welcome
        puts "******************"
        puts "******************"
        puts "Welcome to Alchee!"
        puts "******************"
        puts "******************"
    end 

    def ingredient_selection
        puts "Before you get all Alchee on us, type an ingredient you want to get Alchee with..."
        @input = gets.strip.downcase
        @maybe_nil = API.find_cocktail_by_ingredient(@input)
    end 

    def user_input_validation
        if !@maybe_nil
            run
        end 
    end 





    # def find_or_create_by_name
    #     input = gets.strip.downcase
    #     API.find_or_create_by_name(input)
    # end 


end 