class Board
  attr_accessor :screen_representation

  def initialize
    @board_plays = [['_', '_', '_'], ['_', '_', '_'], [' ', ' ', ' ']]

    @A1 = @board_plays[0][0]
    @A2 = @board_plays[1][0]
    @A3 = @board_plays[2][0]
    @B1 = @board_plays[0][1]
    @B2 = @board_plays[1][1]
    @B3 = @board_plays[2][1]
    @C1 = @board_plays[0][2]
    @C2 = @board_plays[1][2]
    @C3 = @board_plays[2][2]
  end

  def display_board
    puts "#{@A1}|#{@B1}|#{@C1}"
    puts "#{@A2}|#{@B2}|#{@C2}"
    puts "#{@A3}|#{@B3}|#{@C3}"
  end
end

board = Board.new
board.display_board
