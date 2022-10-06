# frozen_string_literal: true

require_relative '../../lib/output_serializer'
require_relative '../../lib/input_deserializer'
require_relative '../../lib/battleship'

describe OutputSerializer do
  let(:input)  { ['3', '3', '1,1:2,0:2,3', '0,1:2,3:3,0', '3', '0,1:4,3:2,3', '0,1:0,0:1,1'] }
  let(:deserializer) { InputDeserializer.new(input) }
  let(:battleship) { Battleship.new(deserializer) }
  let(:serializer) { OutputSerializer.new(battleship, deserializer) }

  describe 'generate_output' do
    it 'should return a output string' do
      expect(serializer.generate_output).to eql("Player 1\n 0 0 _\n _ x _\n B _ _\n\nPlayer 2\n _ x _\n _ _ _\n _ _ _\nP1: 2\nP2: 1\nPlayer 1 Wins")
    end
  end
end
