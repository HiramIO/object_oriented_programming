class Plateau
    attr_reader :max_x, :max_y
    def initialize(x, y)
        @max_x = x
        @max_y = y
    end
end

class Rover
    def initialize(init_x, init_y, init_dir, plateau)
        @x = init_x
        @y = init_y
        @dir = init_dir
        @plateau = plateau
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
            if @x == (@plateau.max_x)
                puts "I've reached the edge of the Plateau!"
            else @x += 1
            end
        elsif @dir == "E"
            if @y == (@plateau.max_y)
                puts "Ive reached the edge!"
            else @y += 1
            end
        elsif @dir == "S"
            if @x == 0
                puts "Ive reached the edge!"
            else @x -= 1
            end
        elsif @dir == "W"
            if @y == 0
                puts "Ive reached the edge!"
            else @y -= 1
            end
        end
    end

    def to_s
        "I am on " + @plateau.to_s + " at coordinates #{@x}, #{@y} facing #{@dir}"
    end

    def dropship(plateau)
        @plateau = plateau
        puts "What X coordinate do you wish to land at?"
        @x = gets.to_i
        puts "What Y coordinate do you wish to land at?"
        @y = gets.to_i
    end

    end

    # class Controller
    #     def initialize
    #     end
    # end


tharsis = Plateau.new(8, 7)
tharsis_rover = Rover.new(2, 3, "E", tharsis)
puts tharsis_rover
plateau = Plateau.new(10, 10)
tharsis_rover.dropship(plateau)
puts tharsis_rover
tharsis_rover.read_instruction("RMMRMM")
puts tharsis_rover