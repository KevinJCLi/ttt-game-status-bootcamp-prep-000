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

def won?(board)
	WIN_COMBINATIONS.each do |combination|
		combination_array = []
		combination.each do |position|
			combination_array << board[position]
		end
		if combination_array == ["X", "X", "X"] || combination_array == ["O", "O", "O"]
			return combination
		end
	end
	return false
end
  
def full?(board)
  board.all?{|position| position == "X" || position == "O"}
end

def draw?(board)
	!won?(board) && full?(board)
end

def over?(board)
	won?(board) || draw?(board)
end

def winner(board)
	won?(board) ? board[won?(board)[0]] : nil
end


