# Object Oriented Programing

# Class

class Persona
    
    def self.suggested_names        # Methods of Class you Use the word "self."
        ["Pepe", "Sutano", "Mengano"]
    end

    def initialize(name, age)  # constructor
        @name = name
        @age = age             # Local variables (scope varoables are declareted with @)
    end

    def name                      # getters (methods) from instance
        @name 
    end 
    
    def age
        @age
    end
    
    # persona.name = "pepe"
    # (persona.name = "pepe").age = 7
    def name=(name)             # setters
        @name = name
        self # Refers to the same instance, so in this way you can chain many calls
    end
    def age=(age)
        @age = age
        self
    end

end


persona = Persona.new("pepe", 14)  # Way to instantiate an object of this class
puts persona.name
puts persona.age


# Short Way to define a Class

class People
    attr_accessor(:name, :age)    # Getters and Setters generator

    def self.suggested_ages
        [18,29,31]
    end

    def initialize(name, age)
        @name = name
        @age = age
    end
end


# other way to do it

class People1 < Struct.new(:name, :age) # Getters, Setters and Constructor generator
    def self.suggested_ages
        [18,29,31]
    end
end

