require File.join(File.dirname(__FILE__),'tic_tac_toe')

describe TicTacToe do
  before do
    @game = TicTacToe.new
  end

  it 'returns no winner when just started' do
    @game.winner.should be_nil
  end

  context "when playing a game" do
    it 'returns the correct winner' do
      @game.place('x', 'a1')
      @game.place('o', 'b1')
      @game.place('x', 'a2')
      @game.place('o', 'b2')
      @game.place('x', 'a3').should == 'x'
    end
  end
end

require 'rubygems'
require 'debugger'

describe PositionTranslator do
  it 'translate correctly' do
    subject.translate("a1").should == [0, 0]
  end

  it 'raises error when x is out of bound' do
    expect {subject.translate('a4')}.to raise_error InvalidPosition
    expect {subject.translate('a10')}.to raise_error InvalidPosition
  end

  it 'raises error when it is in invalid format' do
    expect { subject.translate('qweqw1wewe')}.to raise_error InvalidPositionFormat
  end
end
