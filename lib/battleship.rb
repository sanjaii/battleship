class Battleship
  private

  attr_reader :input

  def initialize(deserialized_input)
    @input = deserialized_input
  end

  public

  def p1_results
    {
      'destroyed_ships' => input.p1_positions & input.p2_moves,
      'remaining_ships' => input.p1_positions - input.p2_moves,
      'missed_locations' => input.p2_moves - input.p1_positions
    }
  end

  def p2_results
    {
      'destroyed_ships' => input.p2_positions & input.p1_moves,
      'remaining_ships' => input.p2_positions - input.p1_moves,
      'missed_locations' => input.p1_moves - input.p2_positions
    }
  end
end
