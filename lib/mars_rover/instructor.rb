module MarsRover
  class Instructor
    attr_accessor :rover, :plateau, :instructions

    def initialize(rover, plateau, instructions)
      @rover = rover
      @plateau = plateau
      @instructions = instructions
    end

    # Process all instructions for a given rover on the plateau.
    def process_instructions
      instructions.each do |instruction|
        if instruction == 'M'
          # It is assumed that a rover cannot move out of bounds.
          rover.move if next_move_in_bounds?
        else
          rover.turn(instruction)
        end
      end
    end

    private

    # Check if the next move is within bounds
    def next_move_in_bounds?
      next_move = Navigator.new(rover.position_x, rover.position_y, rover.direction).get_move_coordinates
      plateau.rover_in_bounds?(next_move[:x], next_move[:y])
    end
  end
end