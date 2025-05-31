class Player
  attr_reader :player_name, :representation

  def initialize(symbol, player_name)
    @representation = symbol
    @player_name = player_name
  end

  def choose_row
    row = nil
    until [0, 1, 2].include?(row)
      puts 'Chose a row! 0, 1 or 2?'
      row = gets.chomp.to_i
      puts 'Input not acceptable' unless [0, 1, 2].include?(row)
    end
    row
  end

  def choose_column
    column = nil
    until [0, 1, 2].include?(column)
      puts 'Chose a column! 0, 1 or 2?'
      column = gets.chomp.to_i
      puts 'Input not acceptable' unless [0, 1, 2].include?(column)
    end
    column
  end

  def make_a_play(board)
    play = [choose_row, choose_column]
    until board.valid_move?(play)
      puts 'Someone already made that play, please select a valid play'
      play = [choose_row, choose_column]
    end
    board.board_plays[play[0]][play[1]] = self
    board.number_of_plays += 1
  end

  def to_s
    @representation
  end
end
