class Animal
    attr_accessor :name

    def initialize name
        self.name = name
    end
    
    def say_hello
        puts "Hello!"
    end
end

class Dog < Animal
    def say_hello
        puts "\nGau Gau, I'm a Dog. My name's #{self.name}"
    end
end

class Cat < Animal
    def say_hello
        puts "\nMeow Meow, I'm a Cat. My name's #{self.name}"
    end
end

class Zoo
    def initialize
        @all_animals = Array.new
    end
    
    def add_animal animal
        @all_animals << animal
    end

    def add_animals animals
        @all_animals.concat(animals)
    end

    def remove_animal index
        @all_animals.delete_at(index)
    end

    def remove_all_animals
        @all_animals = []
    end

    def show_all_animals
        @all_animals.each do |ani|
            puts ani.say_hello()
        end
    end
end

tom_cat = Cat.new("Tom")
goofy_dog = Dog.new("Goofy")
zoo = Zoo.new()
zoo.add_animal(tom_cat)
zoo.add_animal(goofy_dog)
zoo.add_animals([Cat.new("Tabby"), Dog.new("Shiba")])
zoo.show_all_animals()