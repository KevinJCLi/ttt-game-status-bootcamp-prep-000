# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
]

def win?(board)
	WIN_COMBINATIONS.each do |combination|
		combination_array = []
		combination.each do |position|
			combination_array << board[position]
		end
		if combination_array == ["X", "X", "X"] || combination_array == ["O", "O", "O"]
			combination_array
		else
			false
		end
	end
end
  
  
  
def full?(board)
  board.all? do |position|
    
end



