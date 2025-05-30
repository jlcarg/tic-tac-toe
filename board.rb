class Board
  attr_accessor :board_plays

  def initialize
    @board_plays = [['_', '_', '_'], ['_', '_', '_'], [' ', ' ', ' ']]
  end

  def display_board
    @board_plays.each do |array|
      puts array.join('|')
    end
  end
end
