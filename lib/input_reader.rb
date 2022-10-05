class InputReader
  private

  attr_reader :source

  def initialize(source)
    @source = source
  end

  public

  def read
    File.readlines(source, chomp: true)
  end
end
