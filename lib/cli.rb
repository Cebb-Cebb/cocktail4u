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
        puts "Before you get all Alchee on us, type an ingredient you want to get Alchee with..."
        @input = gets.strip.downcase
        @maybe_nil = API.find_cocktail_by_ingredient(@input)
        if !@maybe_nil      
            puts " asdsda"  
        ingredient_selection
        end 
    end 

    def display_cocktails
        @cocktails = Cocktail.all
        @cocktails.each.with_index(1) do |cocktail, i| 
            puts "#{i}. #{cocktail.name}"
        end 
    end
    
    def user_selection
        @cocktail_input = gets.strip.to_i
        if @cocktail_input.between?(1, @cocktails.length)
            @cocktail = @cocktails[@cocktail_input-1]
        display_cocktail
        else 
            puts "wrong input please type a number from 1 to #{@cocktails.length}"
        user_selection
        end 
    end 


    def display_cocktail
        puts @cocktail.name 

    end 

            






    # def find_or_create_by_name
    #     input = gets.strip.downcase
    #     API.find_or_create_by_name(input)
    # end 


end 