class Player
  attr_reader :player_name

  def initialize(symbol, player_name)
    @representation = symbol
    @player_name = player_name
  end

  def choose_a_play
    puts 'Chose a row! 0, 1 or 2?'
    row = gets.chomp.to_i
    puts 'Chose a column! 0, 1 or 2?'
    column = gets.chomp.to_i

    [row, column]
  end

  def make_a_play(board)
    play = choose_a_play
    board.board_plays[play[0]][play[1]] = self
  end

  def to_s
    @representation
  end
end
