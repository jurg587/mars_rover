RSpec.describe MarsRover::Plateau do
  describe 'rover_in_bounds?' do
    it 'should return false if the rover position is out of bounds' do
      rover = MarsRover::Rover.new(6, 3, 'E')
      plateau = MarsRover::Plateau.new(5, 5)
      expect(plateau.rover_in_bounds?(rover.position_x, rover.position_y)).to eq(false)
    end

    it 'should return true if the rover position is in of bounds' do
      rover = MarsRover::Rover.new(3, 3, 'E')
      plateau = MarsRover::Plateau.new(5, 5)
      expect(plateau.rover_in_bounds?(rover.position_x, rover.position_y)).to eq(true)
    end
  end
end
