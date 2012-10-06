class TicTacToe
  attr_reader :board
  attr_reader :position_translator

  def initialize
    @board = [[], [], []]
    @position_translator = PositionTranslator.new
  end

  def winner
    nil
  end

  def place(symbol, position)
    x, y = position_translator.translate(position)
    @board[x][y] = symbol
  end
end

class PositionTranslator
  X_POSITION_MAPPING = {'a' => 0, 'b' => 1, 'c' => 2}
  def translate(friendly_position)
    x,y = X_POSITION_MAPPING[friendly_position[0]], (friendly_position[1].to_i-1)
  end
end
