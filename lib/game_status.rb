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
  WIN_COMBINATIONS.each do |a_combination|
    x = a_combination.map { |x| board[x] }
    puts "x: #{x.inspect}"
    if x.all?("X") || x.all?("O")
      puts "true"
    end
  end
  false
end