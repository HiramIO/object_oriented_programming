class Rover
    def initialize(init_x, init_y, init_direction)
        @x = init_x
        @y = init_y
        @direction = init_direction
    end


def move
end

def turn_left
    if @direction == "N"
        @direction = "W"
    end
end

def turn_right
end

def to_s
    "I am at #{@x}, #{@y} facing #{@direction}."
end

end

my_rover = Rover.new(0, 0, "N")
puts my_rover
my_rover.turn_left
puts my_rover