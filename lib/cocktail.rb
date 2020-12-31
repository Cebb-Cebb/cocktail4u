class Cocktail  

    @@all =[]

    attr_accessor :ingredients

    def self.all
        @@all
    end

    def initialize(hash)
        hash.each do |key, value|
            self.class.attr_accessor key 
            self.public_send("#{key}=", value)
        end 
        self.ingredients = []
        self.class.all << self
        
    end 
        
    def self.display_by_category
        self.all.map {|cocktail| cocktail.category}
    end


    def self.find_by_name(name)
        self.all.index{|ingredient_object| ingredient_object.name == name} 
    end 

    def self.find_or_create_by_name(hash)
        self.find_by_name(hash[:name]) || self.new(hash)
    end 

    def self.small_number_of_ingredients # This method will return an array of cocktail objects with less than 3 ingredients
        self.all.select do |c|
          c.ingredients.size < 3 # i used lemon as an ingredient and there no cocktail with less than 3 ingredients so i changed it to 4 
        end 
    end  
    
        #low level iterator 
        # ingredients = []
        # self.all.each  do |c|
        #    if c.ingredients.size < 3 
        #     ingredients << c
        #    end 
        #   ingredients
        # end 

    def self.non_alcoholic   
        self.all.select do |c| # We will need to iteratte over all the cocktails and check for non-alcoholic         
            c.type == "Non alcoholic"
        end 
    end 

        #  low level iterator      
        #  non_alcoholic = []
        #  binding.pry 
        #   self.all.each do |c| 
        #     # Check the type of the cocktail; if appropriate, push that cocktail to the non_alcoholic
        #     if c.type == "Non alcoholic"
        #         non_alcoholic << c 
        #     end 


        # THis method will return an array of all the cocktail objects that are non-alcoholic
    #     end 
    #     non_alcoholic
    # end 
end 

