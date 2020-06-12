RSpec.describe MarsRover::Navigator do
  describe 'get_move_coordinates' do
    it 'returns x,y = 3,4 when direction is N' do
      direction = MarsRover::Navigator.new(3, 3, 'N')
      expect(direction.get_move_coordinates).to eq({x: 3, y: 4})
    end

    it 'returns x,y = 4,3 when direction is E' do
      direction = MarsRover::Navigator.new(3, 3, 'E')
      expect(direction.get_move_coordinates).to eq({x: 4, y: 3})
    end

    it 'returns x,y = 3,2 when direction is S' do
      direction = MarsRover::Navigator.new(3, 3, 'S')
      expect(direction.get_move_coordinates).to eq({x: 3, y: 2})
    end

    it 'returns x,y = 2,3 when direction is W' do
      direction = MarsRover::Navigator.new(3, 3, 'W')
      expect(direction.get_move_coordinates).to eq({x: 2, y: 3})
    end
  end
end
