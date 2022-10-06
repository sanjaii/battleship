# frozen_string_literal: true

require_relative '../../lib/input_reader'

describe InputReader do
  describe 'reader' do
    it 'should read from the specified source and return array of lines' do
      input = InputReader.new('test_input.txt').read
      expect(input).to eql(['5', '5', '1,1:2,0:2,3:3,4:4,3', '0,1:2,3:3,0:3,4:4,1', '5', '0,1:4,3:2,3:3,1:4,1',
                            '0,1:0,0:1,1:2,3:4,3'])
    end
  end
end
