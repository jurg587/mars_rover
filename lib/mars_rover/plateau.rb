module MarsRover
  class Plateau
    attr_accessor :boundary_x, :boundary_y

    def initialize(boundary_x, boundary_y)
      @boundary_x = boundary_x.to_i
      @boundary_y = boundary_y.to_i
    end

    # Check if rover is in plateau bounds
    def rover_in_bounds?(coordinate_x, coordinate_y)
      coordinate_x <= boundary_x && coordinate_y <= boundary_y && coordinate_x >= 0 && coordinate_y >= 0
    end

    # Print plateau with all rovers on it.
    # Rovers are represented with a number in the sequential order they were added
    def print_plateau(rovers)
      (0..boundary_y).reverse_each do |y|
        grid = ""
        (0..boundary_x).each do |x|
          roverNames = ""
          rovers.each_with_index do |rover, index|
            roverNames = " #{index+1}" if rover.position_x == x && rover.position_y == y
          end
          grid += roverNames.empty? ? " +" : roverNames
        end
        puts grid
      end
    end
  end
end