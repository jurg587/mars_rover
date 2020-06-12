module MarsRover
  class Navigator
    attr_accessor :position_x, :position_y, :direction

    NORTH = {x: 0, y: 1}
    EAST = {x: 1, y: 0}
    SOUTH = {x: 0, y: -1}
    WEST = {x: -1, y: 0}
    DIRECTION = {N: NORTH, E: EAST, S: SOUTH, W: WEST}

    def initialize(position_x, position_y, direction)
      @position_x = position_x
      @position_y = position_y
      @direction = direction
    end

    # Get the new coordinates based on the current rover position and direction
    def get_move_coordinates
      {x: position_x + DIRECTION[direction.to_sym][:x], y: position_y + DIRECTION[direction.to_sym][:y]}
    end
  end
end