class OutputSerializer
  private

  attr_reader :battleship, :input

  def initialize(battleship, deserialized_input)
    @battleship = battleship
    @input = deserialized_input
  end

  def row(line, results, indices)
    if results['destroyed_ships'].include?(indices)
      "#{line} x"
    elsif results['remaining_ships'].include?(indices)
      "#{line} B"
    elsif results['missed_locations'].include?(indices)
      "#{line} 0"
    else
      "#{line} _"
    end
  end

  def champion
    return 'Player 1 Wins' if p1_score > p2_score
    return 'Player 2 Wins' if p1_score < p2_score

    "It's a draw"
  end

  def p1_results
    battleship.p1_results
  end

  def p2_results
    battleship.p2_results
  end

  def p1_score
    p2_results['destroyed_ships'].count
  end

  def p2_score
    p1_results['destroyed_ships'].count
  end

  def p1_grid
    "Player 1\n#{generate_grid('', p1_results, 0)}"
  end

  def p2_grid
    "\nPlayer 2\n#{generate_grid('', p2_results, 0)}"
  end

  def generate_grid(grid, results, row)
    while row < input.grid_size
      column = 0
      while column < input.grid_size
        grid = row(grid, results, [row, column])
        column += 1
      end
      grid += "\n"
      row += 1
    end
    grid
  end

  public

  def generate_output
    "#{p1_grid}#{p2_grid}" + "P1: #{p1_score}\n" + "P2: #{p2_score}\n" + champion
  end
end
