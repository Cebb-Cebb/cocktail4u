class CLI 
    def run
        welcome
        ingredient_selection
        display_cocktails
        user_selection
    end
    
    def welcome
        puts "******************"
        puts "******************"
        puts "Welcome to Alchee!"
        puts "******************"
        puts "******************"
    end 

    def ingredient_selection
        puts "Please type an ingredient you want to get to get Alchee with..."
        @input = gets.strip.downcase
        @maybe_nil = API.find_cocktail_by_ingredient(@input)
        if !@maybe_nil      
            puts " Real Alchee's dont use that ingredient, please try another one."  
            ingredient_selection
        end 
    end 

    def display_cocktails
        @cocktails = Cocktail.all
        @cocktails.each.with_index(1) do |cocktail, i| 
            puts "#{i}. #{cocktail.name}"
        end 
        puts "If you want to exit type exit, if you want to select a cocktail enter its number or if you would like to select a different ingredient type ingredient"
        
    end
    
    def user_selection
        @cocktail_input = gets.strip.downcase 
        if @cocktail_input == "exit"
            puts "Goodbye!"
        elsif @cocktail_input == "ingredient" 
            run  
        elsif @cocktail_input.to_i.between?(1, @cocktails.length)
            @cocktail = @cocktails[@cocktail_input.to_i - 1]
            display_cocktail
        else 
            puts "Someone is wavy =) Wrong input please type a number from 1 to #{@cocktails.length}"
            user_selection
        end 
    end 


    def display_cocktail
        puts @cocktail.name
        @cocktail.ingredients.each do |ingredient| 
            puts ingredient.name
        end  
        puts @cocktail.instructions
        @cocktail_input = gets.strip.downcase 
        # if @cocktail_input == "exit"
        #     puts "Goodbye!"
        # puts "if you want to go back type back otherwise type ingredient to see a new collection of cocktails using your ingredient"

    end



    
    


            






    # def find_or_create_by_name
    #     input = gets.strip.downcase
    #     API.find_or_create_by_name(input)
    # end 


end 