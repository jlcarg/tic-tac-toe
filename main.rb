require_relative 'lib/board'
require_relative 'lib/player'

board = Board.new

player1 = Player.new('X', 'Player 1')
player2 = Player.new('O', 'Player 2')

player_turn = player1

puts "\nTIC TAC TOE on the command line\n by jlcarg\n"

board.display_board

until board.check_win
  if board.number_of_plays == 9
    puts "It's a DRAW"
    break
  end
  player_turn.make_a_play(board)
  player_turn = player_turn == player1 ? player2 : player1
  board.display_board
end
