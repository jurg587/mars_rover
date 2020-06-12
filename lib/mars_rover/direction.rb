module MarsRover
  class Direction
    attr_accessor :current_direction, :instruction

    NORTH = {L: 'W', R: 'E'}
    EAST = {L: 'N', R: 'S'}
    SOUTH = {L: 'E', R: 'W'}
    WEST = {L: 'S', R: 'N'}
    DIRECTION = {N: NORTH, E: EAST, S: SOUTH, W: WEST}

    def initialize(current_direction, instruction)
      @current_direction = current_direction
      @instruction = instruction
    end

    # Get the next direction based on the current direction and instruction
    def get_direction
      DIRECTION[current_direction.to_sym][instruction.to_sym]
    end
  end
end