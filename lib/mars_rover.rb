require "mars_rover/rover"
require "mars_rover/plateau"
require "mars_rover/instructor"
require "mars_rover/navigator"
require "mars_rover/direction"

module MarsRover
  class Main
    VALID_CARDINAL_DIRECTIONS = %w[N S E W].freeze
    VALID_INSTRUCTIONS = %w[L R M].freeze

    class << self
      attr_accessor :input, :rovers, :rover, :plateau

      # Use this method to run the challenge.
      # It is assumed that a user will be prompted to enter information until the format is correct for the given input.
      def run_challenge
        @rovers = []
        print_welcome
        get_plateau_coordinates
        get_rover_instructions
        print_output
      end

      private

      def print_welcome
        puts "Welcome to the mars rover challenge!"
        puts "-Type the upper right coordinates of the plateau first followed by all rover information."
        puts "-Plateau coordinates format: 5 5"
        puts "-Rover position format: 2 2 E"
        puts "-Rover instructions format: LMLRMML"
        puts "-Type 'end' to process all rover instructions"
      end

      # This method is used to get the plateau coordinates.
      def get_plateau_coordinates
        @input = STDIN.gets.chomp.split

        #Prompt the user for input until valid coordinates are entered.
        while !valid_coordinates
          puts "Incorrect upper right coordinates entered. Enter upper right coordinates:"
          @input = STDIN.gets.chomp.split
        end

        @plateau = Plateau.new(input[0], input[1])
      end

      # This method is used to get instructions for multiple rovers.
      def get_rover_instructions
        while true
          @input = STDIN.gets.chomp.split
          break if @input[0] == "end"

          get_rover_position
          get_rover_instruction
          Instructor.new(rover, plateau, input).process_instructions
          rovers.push(rover)
        end
      end

      # This method is used to get the rover position.
      # It is assumed that a rover position entered must be within the plateau bounds.
      def get_rover_position
        valid_rover_position = false

        while !valid_rover_position
          if valid_position
            valid_rover_position = plateau.rover_in_bounds?(input[0].to_i, input[1].to_i)
            unless valid_rover_position
              puts "Rover position out of plateau bounds. Enter rover position:"
              @input = STDIN.gets.chomp.split
            end
          else
            puts "Incorrect position entered. Enter rover position:"
            @input = STDIN.gets.chomp.split
          end
        end

        @rover = Rover.new(input[0], input[1], input[2])
      end

      # This method is used to get the rover instruction set.
      def get_rover_instruction
        @input = STDIN.gets.chomp.split('')

        while !valid_instruction
          puts "Incorrect instructions entered. Enter rover instruction:"
          @input = STDIN.gets.chomp.split('')
        end
      end

      def print_output
        puts
        puts "Output:"
        rovers.each do |rover|
          puts rover.current_position
        end

        puts
        puts "Plateau:"
        plateau.print_plateau(rovers)
      end

      # Plateau coordinates are only valid if it is 2 integers separated by a space.
      def valid_coordinates
        input.length == 2 && input.all? { |value| value.match? /\A\d+\z/ }
      end

      # Rover position is only valid if it contains 2 integers and a valid cardinal letter separated by spaces.
      def valid_position
        input.length == 3 && input[0..1].all? { |value| value.match? /\A\d+\z/ } && VALID_CARDINAL_DIRECTIONS.include?(input.last)
      end

      # Rover instruction is only valid if all characters matches one of the letters L, R, M
      def valid_instruction
        input.all? { |value| VALID_INSTRUCTIONS.include?(value) }
      end
    end
  end
end
