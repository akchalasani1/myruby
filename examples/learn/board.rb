board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
board1 = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
board2 = ["O", "X", " ", " ", "X", " ", "X", "O", " "]
board3 = ["O", "O", "O", "O", "O", "O", "O", "O", "O"]
board4 = ["O", "X", " ", " ", "X", " ", "X", "O", " "]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board4)