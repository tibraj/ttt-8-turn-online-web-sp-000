def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(userinput)
  userinput.to_i - 1
end
def move (array, index, value = "X")
  array[index] = value
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_move = gets.strip.to_i - 1
  if valid_move?(board, input_to_index(user_move)) == true
    move(board, user_move, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
