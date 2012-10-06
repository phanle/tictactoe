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


class InvalidPosition < RuntimeError ;end
class InvalidPositionFormat < RuntimeError ;end
class PositionTranslator
  FRIENDLY_X = 'a'..'c'
  FRIENDLY_Y = '1'..'3'

  def translate(friendly_position)
    raise InvalidPositionFormat unless /^(\D+)(\d+)$/.match(friendly_position)
    x, y = FRIENDLY_X.find_index($1), FRIENDLY_Y.find_index($2)
    raise InvalidPosition if x.nil? || y.nil?
    return [x, y]
  end
end
