require_relative '../../lib/output_writer'

describe OutputWriter do
  describe 'write' do
    it 'should write given string into specified source' do
      output_writer = OutputWriter.new('test_output.txt')
      output_writer.write('Inserting Test String')
      expect(File.read('test_output.txt')).to eql('Inserting Test String')
    end
  end
end
