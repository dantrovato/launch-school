require 'pry'
require 'pry-byebug'

# create board/ display board
square_choices = %w(0 1 2 3 4 5 6 7 8 9)
get_square = ''
BOARD = [
  ['-', '-', '-'],
  ['-', '-', '-'],
  ['-', '-', '-']
]
AVAILABLE_SLOTS = [0, 1, 2, 3, 4, 5, 6, 7, 8]
game_on = true

def print_board
  p BOARD[0]
  p BOARD[1]
  p BOARD[2]
end

# here i want to select the numbers in the AVAILABLE_SLOTS array and
# put them into a computer_options variable so that the computer can pic an empty sloo
def computer_turn
  computer_options = AVAILABLE_SLOTS.select do |index|
    index != nil
  end
  #p computer_options.sample
  case p computer_options.sample
  when 0
    BOARD[0][0] = 'o'
    AVAILABLE_SLOTS[0] = nil
  when 1
    BOARD[0][1] = 'o'
    AVAILABLE_SLOTS[1] = nil
  when 2
    BOARD[0][2] = 'o'
    AVAILABLE_SLOTS[2] = nil
  when 3
    BOARD[1][0] = 'o'
    AVAILABLE_SLOTS[3] = nil
  when 4
    BOARD[1][1] = 'o'
    AVAILABLE_SLOTS[4] = nil
  when 5
    BOARD[1][2] = 'o'
    AVAILABLE_SLOTS[5] = nil
  when 6
    BOARD[2][0] = 'o'
    AVAILABLE_SLOTS[6] = nil
  when 7
    BOARD[2][1] = 'o'
    AVAILABLE_SLOTS[7] = nil
  when 8
    BOARD[2][2] = 'o'
    AVAILABLE_SLOTS[8] = nil
  end

  print_board()
end

print_board()

# get user input
while game_on

  if !BOARD[0].include?('-') && !BOARD[1].include?('-') && !BOARD[2].include?('-')
    puts 'AAAAAAANDA IZZA TIE!!!!'
    # game_on = false
    break
  end

  # get row
  loop do
    puts 'Enter your square: 1 to 9'
    get_square = gets.chomp
    p get_square
    if square_choices.include?(get_square) && AVAILABLE_SLOTS[get_square.to_i - 1] != nil
      break
    else
      puts "Invalid choice. Try again, It's not hard."
    end
  end

  case get_square
  when '1'
    BOARD[0][0] = 'x'
    AVAILABLE_SLOTS[0] = nil
  when '2'
    BOARD[0][1] = 'x'
    AVAILABLE_SLOTS[1] = nil
  when '3'
    BOARD[0][2] = 'x'
    AVAILABLE_SLOTS[2] = nil
  when '4'
    BOARD[1][0] = 'x'
    AVAILABLE_SLOTS[3] = nil
  when '5'
    BOARD[1][1] = 'x'
    AVAILABLE_SLOTS[4] = nil
  when '6'
    BOARD[1][2] = 'x'
    AVAILABLE_SLOTS[5] = nil
  when '7'
    BOARD[2][0] = 'x'
    AVAILABLE_SLOTS[6] = nil
  when '8'
    BOARD[2][1] = 'x'
    AVAILABLE_SLOTS[7] = nil
  when '9'
    BOARD[2][2] = 'x'
    AVAILABLE_SLOTS[8] = nil
  else
    puts 'Invalid input'
  end

  print_board()


  puts "Computer's turn..."
  computer_turn()

end
