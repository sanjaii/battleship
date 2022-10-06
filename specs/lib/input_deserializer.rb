require_relative '../../lib/input_deserializer'

describe InputDeserializer do
  let(:input) { ['5', '5', '1,1:2,0:2,3:3,4:4,3', '0,1:2,3:3,0:3,4:4,1', '5', '0,1:4,3:2,3:3,1:4,1', '0,1:0,0:1,1:2,3:4,3'] }
  let(:deserializer) { InputDeserializer.new(input) }

  describe 'grid_size' do
    it 'should return the size of the grid from the array of inputs' do
      expect(deserializer.grid_size).to eq(5)
    end
  end
  describe 'total_ships' do
    it 'should return total number of ships from the array of inputs' do
      expect(deserializer.total_ships).to eq(5)
    end
  end

  describe 'p1_positions' do
    it 'should return player 1 positions in the grid' do
      expect(deserializer.p1_positions).to eq([[1, 1], [2, 0], [2, 3], [3, 4], [4, 3]])
    end
  end

  describe 'p2_positions' do
    it 'should return player 2 positions in the grid' do
      expect(deserializer.p2_positions).to eq([[0, 1], [2, 3], [3, 0], [3, 4], [4, 1]])
    end
  end

  describe 'total_missiles' do
    it 'should return the total number of missiles in the battleship' do
      expect(deserializer.total_missiles).to eq(5)
    end
  end
  describe 'p1_moves' do
    it 'should return the player 1 moves in the battleship ' do
      expect(deserializer.p1_moves).to eq([[0, 1], [4, 3], [2, 3], [3, 1], [4, 1]])
    end
  end

  describe 'p2_moves' do
    it 'should return the player 2 moves in the battleship' do
      expect(deserializer.p2_moves).to eq([[0, 1], [0, 0], [1, 1], [2, 3], [4, 3]])
    end
  end
end
