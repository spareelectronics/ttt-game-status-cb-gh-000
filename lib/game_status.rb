# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8], # Right column
  [0,4,8], # left-right diagonal
  [6,4,2]  # right-left diagonal
]

def won?(board)
  WIN_COMBINATIONS.any? do |win|
    if (position_taken?(board,win[0]) && board[win[0]] == board[win[1]] && board[win[1]] == board[win[2]]) {
      return win
    }
    false
  end
end
