class Rover
    def initialize(init_x, init_y, init_dir)
        @x = init_x
        @y = init_y
        @dir = init_dir
    end
    def read_instruction(user_input)
        commands = user_input.split(//)
            commands.each do |x|
                if x == "L"
                    self.turn_left
                elsif x == "R"
                    self.turn_right
                elsif x == "M"
                    self.move
                end
            end
    end
    def turn_left
            if @dir == "N"
                @dir = "W"
            elsif @dir == "W"
                @dir = "S"
            elsif @dir == "S"
                @dir = "E"
            elsif @dir == "E"
                @dir = "N"
            end
        end
    def turn_right
            if @dir == "N"
                @dir = "E"
            elsif @dir == "E"
                @dir = "S"
            elsif @dir == "S"
                @dir = "W"
            elsif @dir == "W"
                @dir = "N"
            end
        end
    def move
        if @dir == "N"
            @y += 1
        elsif @dir == "E"
            @x += 1
        elsif @dir == "S"
            @y -= 1
        elsif @dir == "W"
            @x -= 1
        end
    end
    def to_s
    "I am at #{@x}, #{@y} facing #{@dir}."
    end
    end

    my_rover = Rover.new(0, 0, "N")
    puts my_rover
    my_rover.read_instruction("MMLMR")
    puts my_rover
