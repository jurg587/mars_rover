module MarsRover
  class Rover
    attr_accessor :position_x, :position_y, :direction

    def initialize(position_x, position_y, direction)
      @position_x = position_x.to_i
      @position_y = position_y.to_i
      @direction = direction
    end

    # Turns the rover based on a new instruction (L for left, R for Right)
    def turn(instruction)
      @direction = Direction.new(direction, instruction).get_direction
    end

    # Move the rover forward in the current direction it is facing
    def move
      next_move = Navigator.new(position_x, position_y, direction).get_move_coordinates
      @position_x = next_move[:x]
      @position_y = next_move[:y]
    end

    # Get current rover position in plateau
    def current_position
      "#{position_x} #{position_y} #{direction}"
    end
  end
end