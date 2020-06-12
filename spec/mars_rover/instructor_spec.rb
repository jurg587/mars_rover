RSpec.describe MarsRover::Instructor do
  describe 'process_instructions' do
    it 'should instruct the rover to navigate the plateau from position 1 2 N to 1 3 N' do
      rover = MarsRover::Rover.new(1, 2, 'N')
      plateau = MarsRover::Plateau.new(5, 5)
      instructor = MarsRover::Instructor.new(rover, plateau, 'LMLMLMLMM'.split(''))
      instructor.process_instructions
      expect(rover.current_position).to eq('1 3 N')
    end

    it 'should instruct the rover to navigate the plateau from position 3 3 E to 5 1 E' do
      rover = MarsRover::Rover.new(3, 3, 'E')
      plateau = MarsRover::Plateau.new(5, 5)
      instructor = MarsRover::Instructor.new(rover, plateau, 'MMRMMRMRRM'.split(''))
      instructor.process_instructions
      expect(rover.current_position).to eq('5 1 E')
    end
  end

  describe 'next_move_in_bounds?' do
    it 'returns false when next rover move not in bounds' do
      rover = MarsRover::Rover.new(5, 5, 'N')
      plateau = MarsRover::Plateau.new(5, 5)
      instructor = MarsRover::Instructor.new(rover, plateau, 'MLMLMLMM')
      expect(instructor.send(:next_move_in_bounds?)).to eq(false)
    end

    it 'returns true when next rover move in bounds' do
      rover = MarsRover::Rover.new(1, 2, 'N')
      plateau = MarsRover::Plateau.new(5, 5)
      instructor = MarsRover::Instructor.new(rover, plateau, 'LMLMLMLMM')
      expect(instructor.send(:next_move_in_bounds?)).to eq(true)
    end
  end
end
