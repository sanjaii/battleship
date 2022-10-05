class InputDeserializer
  private

  attr_reader :inputs

  def initialize(array_of_inputs)
    @inputs = array_of_inputs
  end

  def indices(string)
    positions = []
    string.split(':').each do |position|
      positions << position.split(',').map(&:to_i)
    end
    positions
  end

  public

  def grid_size
    inputs[0].to_i
  end

  def total_ships
    inputs[1].to_i
  end

  def p1_positions
    indices(inputs[2])
  end

  def p2_positions
    indices(inputs[3])
  end

  def total_missiles
    inputs[4].to_i
  end

  def p1_moves
    indices(inputs[5])
  end

  def p2_moves
    indices(inputs[6])
  end
end
