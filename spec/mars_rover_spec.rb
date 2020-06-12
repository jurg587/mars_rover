RSpec.describe MarsRover::Main do
  describe 'valid_coordinates' do
    it 'valid coordinate input' do
      MarsRover::Main.input = '1 2'.split
      expect(MarsRover::Main.send(:valid_coordinates)).to eq(true)
    end

    it 'invalid coordinate input' do
      MarsRover::Main.input = '1 2 N'.split
      expect(MarsRover::Main.send(:valid_coordinates)).to eq(false)
    end
  end

  describe 'valid_position' do
    it 'valid position input' do
      MarsRover::Main.input = '1 2 N'.split
      expect(MarsRover::Main.send(:valid_position)).to eq(true)
    end

    it 'invalid position input' do
      MarsRover::Main.input = '1 2 M'.split
      expect(MarsRover::Main.send(:valid_position)).to eq(false)
    end
  end

  describe 'valid_instruction' do
    it 'valid instruction input' do
      MarsRover::Main.input = 'LMRLMLRMM'.split('')
      expect(MarsRover::Main.send(:valid_instruction)).to eq(true)
    end

    it 'invalid instruction input' do
      MarsRover::Main.input = 'LMRLMLRMMN'.split('')
      expect(MarsRover::Main.send(:valid_instruction)).to eq(false)
    end
  end

end
