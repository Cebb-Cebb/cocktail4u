class Cocktail

    @@all =[]

    attr_accessor :ingredients

    def self.all
        @@all
    end

    def initialize(hash)
        hash.each do |key, value|
            self.class.attr_accessor key 
            self.send("#{key}=", value)
        end 

        self.class.all << self

    end 

end 