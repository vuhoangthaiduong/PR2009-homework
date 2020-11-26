class MyCar
    attr_accessor :year
    attr_accessor :color
    attr_accessor :model
    @@max_speed = 250        

    def initialize year, color, model
        self.year = year
        self.color = color
        self.model = model
        @speed = 0
    end

    def speed_up_by speed
        @speed = (@speed + speed <= 250? @speed += speed : 250) 
    end

    def slow_down_by speed
        @speed = (@speed - speed >= 0? @speed -= speed : 0)
    end

    def get_speed
        puts @speed
    end

    def shut_off
        puts @speed == 0? "The car is already shut down" : @speed
    end

end

car = MyCar.new(2008, "red", "Civic")
puts car.get_speed
car.speed_up_by(30)
puts car.get_speed
car.speed_up_by(260)
puts car.get_speed
car.slow_down_by(220)
puts car.get_speed
car.slow_down_by(700)
puts car.get_speed
car.shut_off
