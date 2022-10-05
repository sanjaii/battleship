class OutputWriter
  private

  attr_reader :path

  def initialize(source)
    @path = source
  end

  public

  def write(output)
    File.open('output.txt', 'w+') do |file|
      file.write output
    end
  end
end
