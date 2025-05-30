class Board
  attr_accessor :board_plays, :number_of_plays

  def initialize
    @board_plays = [['_', '_', '_'], ['_', '_', '_'], [' ', ' ', ' ']]
    @number_of_plays = 0
  end

  def display_board
    @board_plays.each do |array|
      puts array.join('|')
    end
  end

  def check_win
    check_win_row
    check_win_column
    check_win_diagonal
  end

  def check_win_row
    @board_plays.each do |array|
      if array.uniq.size == 1 && array.include?('_') == false && array.include?(' ') == false
        puts "We have a winner #{array[0].player_name}"
        return true
      end
    end
  end

  def check_win_column
    if board_plays[0][0] == board_plays[1][0] && board_plays[0][0] == board_plays[2][0]
      puts "We have a winner! #{board_plays[0][0].player_name}"
      true
    elsif board_plays[0][1] == board_plays[1][1] && board_plays[0][1] == board_plays[2][1]
      puts "We have a winner! #{board_plays[0][1].player_name}"
      true
    elsif board_plays[0][2] == board_plays[1][2] && board_plays[0][2] == board_plays[2][2]
      puts "We have a winner! #{board_plays[0][2].player_name}"
      true
    end
  end

  def check_win_diagonal
    if board_plays[0][0] == board_plays[1][1] && board_plays[0][0] == board_plays[2][2]
      puts "We have a winner! #{board_plays[0][0].player_name}"
      true
    elsif board_plays[0][2] == board_plays[1][1] && board_plays[0][2] == board_plays[2][0]
      puts "We have a winner! #{board_plays[0][2].player_name}"
      true
    end
  end
end
