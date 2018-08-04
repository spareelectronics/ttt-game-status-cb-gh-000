# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  #Bottom row
  [0,4,8],  #left-right diagonal
  [6,4,2]  #right-left diagonal
]

def won?(board)
  WIN_COMBINATIONS.any? do |win_combo|
    (board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]])
    win_combo
  end
end
