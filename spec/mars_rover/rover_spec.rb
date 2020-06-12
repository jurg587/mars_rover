RSpec.describe MarsRover::Rover do
  describe 'turn' do
    it 'should turn the rover left so that it faces north' do
      rover = MarsRover::Rover.new(1, 2, 'E')
      rover.turn('L')
      expect(rover.direction).to eq('N')
    end

    it 'should turn the rover right so that it faces south' do
      rover = MarsRover::Rover.new(1, 2, 'E')
      rover.turn('R')
      expect(rover.direction).to eq('S')
    end
  end

  describe 'move' do
    it 'should move the rover 1 position north' do
      rover = MarsRover::Rover.new(3, 3, 'N')
      rover.move
      expect(rover.position_x).to eq(3)
      expect(rover.position_y).to eq(4)
    end

    it 'should move the rover 1 position south' do
      rover = MarsRover::Rover.new(3, 3, 'S')
      rover.move
      expect(rover.position_x).to eq(3)
      expect(rover.position_y).to eq(2)
    end

    it 'should move the rover 1 position east' do
      rover = MarsRover::Rover.new(3, 3, 'E')
      rover.move
      expect(rover.position_x).to eq(4)
      expect(rover.position_y).to eq(3)
    end

    it 'should move the rover 1 position west' do
      rover = MarsRover::Rover.new(3, 3, 'W')
      rover.move
      expect(rover.position_x).to eq(2)
      expect(rover.position_y).to eq(3)
    end
  end

  describe 'current_position' do
    it 'should return the current position of the rover' do
      rover = MarsRover::Rover.new(3, 3, 'W')
      expect(rover.current_position).to eq('3 3 W')
    end
  end
end