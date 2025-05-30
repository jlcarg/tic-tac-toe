require_relative 'board'
require_relative 'player'

board = Board.new
board.display_board

player1 = Player.new('X', 'Juan')

player1.make_a_play(board)
board.display_board
p board.board_plays
