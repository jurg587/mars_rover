RSpec.describe MarsRover::Direction do
  describe 'get_direction' do
    it 'returns E when direction is N and instruction is R' do
      direction = MarsRover::Direction.new('N', 'R')
      expect(direction.get_direction).to eq('E')
    end

    it 'returns W when direction is N and instruction is L' do
      direction = MarsRover::Direction.new('N', 'L')
      expect(direction.get_direction).to eq('W')
    end

    it 'returns S when direction is E and instruction is R' do
      direction = MarsRover::Direction.new('E', 'R')
      expect(direction.get_direction).to eq('S')
    end

    it 'returns N when direction is E and instruction is L' do
      direction = MarsRover::Direction.new('E', 'L')
      expect(direction.get_direction).to eq('N')
    end

    it 'returns W when direction is S and instruction is R' do
      direction = MarsRover::Direction.new('S', 'R')
      expect(direction.get_direction).to eq('W')
    end

    it 'returns E when direction is S and instruction is L' do
      direction = MarsRover::Direction.new('S', 'L')
      expect(direction.get_direction).to eq('E')
    end

    it 'returns N when direction is W and instruction is R' do
      direction = MarsRover::Direction.new('W', 'R')
      expect(direction.get_direction).to eq('N')
    end

    it 'returns S when direction is W and instruction is L' do
      direction = MarsRover::Direction.new('W', 'L')
      expect(direction.get_direction).to eq('S')
    end
  end
end
