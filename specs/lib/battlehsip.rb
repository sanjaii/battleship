require_relative '../../lib/input_deserializer'
require_relative '../../lib/input_deserializer'
require_relative '../../lib/battleship'

describe Battleship do
  let(:input) { ['5', '5', '1,1:2,0:2,3:3,4:4,3', '0,1:2,3:3,0:3,4:4,1', '5', '0,1:4,3:2,3:3,1:4,1', '0,1:0,0:1,1:2,3:4,3'] }
  let(:deserializer) { InputDeserializer.new(input) }
  let(:battleship) {Battleship.new(deserializer)}

  describe 'p1_results' do
    it 'should return player 1 status after battleship' do
      expect(battleship.p1_results).to include({"destroyed_ships"=>[[1, 1], [2, 3], [4, 3]], "remaining_ships"=>[[2, 0], [3, 4]], "missed_locations"=>[[0, 1], [0, 0]]})
    end
  end

  describe 'p2_results' do
    it 'should return player 2 status after battleship' do
      expect(battleship.p2_results).to include({"destroyed_ships"=>[[0, 1], [2, 3], [4, 1]], "remaining_ships"=>[[3, 0], [3, 4]], "missed_locations"=>[[4, 3], [3, 1]]})
    end
  end
end

