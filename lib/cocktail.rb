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
        # binding.pry 
    end 
        
    # def self.display_by_category
    #     self.all.find_all {|cocktail| cocktail.category}
    # end

    def self.find_by_name(name)
        self.all.index{|ingredient_object| ingredient_object.name == name} 
    end 

    def self.find_or_create_by_name(hash)
        self.find_by_name(hash[:name]) || self.new(hash)
    end 


end 

