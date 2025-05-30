require_relative 'board'
require_relative 'player'

board = Board.new

player1 = Player.new('X', 'player1')
player2 = Player.new('O', 'player2')

player_turn = player1

until board.check_win
  board.display_board
  player_turn.make_a_play(board)
  player_turn = player_turn == player1 ? player2 : player1
end
