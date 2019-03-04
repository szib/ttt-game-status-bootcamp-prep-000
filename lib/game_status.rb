# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    combo = win_combination.map { |x| board[x] }
    # if combo.all? { |w| w == "X" } || combo.all? { |w| w == "O" }
    #   return win_combination
    # end
    return win_combination if combo.all? { |w| w == "X" } || combo.all? { |w| w == "O" }
    
  end
  return false
end