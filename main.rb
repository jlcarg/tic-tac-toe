require_relative 'board'
require_relative 'player'

board = Board.new
board.display_board

player1 = Player.new('X', 'player1')
player2 = Player.new('O', 'player2')

player1.make_a_play(board)
board.display_board
player2.make_a_play(board)
board.display_board
player1.make_a_play(board)
board.display_board
# p board.board_plays
# p board.board_plays[0].uniq == 1
board.check_win
