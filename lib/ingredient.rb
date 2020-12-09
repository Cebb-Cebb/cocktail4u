class Ingredient

    @@all =[]

    attr_accessor :cocktails, :name

    def self.all
        @@all
    end

    def initialize(name)
        self.name = name 
        self.class.all << self
    end 



end 