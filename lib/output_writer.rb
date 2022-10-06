class OutputWriter
  private

  attr_reader :source

  def initialize(source)
    @source = source
  end

  public

  def write(output)
    File.open(source, 'w+') do |file|
      file.write output
    end
  end
end
