class TicTacToe
  attr_reader :board

  X_POSITION_MAPPING = {'a' => 0,
                        'b' => 1,
                        'c' => 2}

  def initialize
    @board = [[], [], []]
  end

  def winner
    nil
  end

  def place(symbol, position)
    x,y = position[0], position[1].to_i
    puts x, y
    @board[X_POSITION_MAPPING[x]][y] = symbol
  end
end
