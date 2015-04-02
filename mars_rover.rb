class Rover
    def initialize(x, y, dir)
        :x = x
        :y = y
        :dir = dir
    end
    def read_instruction(turn, move)
        puts "Turn L, R or No"
            if turn == L
                turn()
    end
    def turn(t)
        # Alternatively, it could be an array? [N, E, S, W]? Good to explore later.
        if t = L
            if dir == N
                dir = W
            elsif dir == W
                dir = S
            elsif dir == S
                dir = E
            elsif dir == E
                dir = N
            end
        elsif t = R
            if dir == N
                dir = E
            elsif dir == E
                dir = S
            elsif dir == S
                dir = W
            elsif dir == W
                dir = N
            end
        end
    end
    def move
        if dir == N
            x += 1
        elsif dir == E
            y += 1
        elsif dir == S
            x -= 1
        elsif dir == W
            y -= 1
        end
    end
    end