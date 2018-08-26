# create board/ display board
row_choices = %w(1 2 3)
column_choices = %w(a b c)
get_row = ''
get_column = ''
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

def computer_turn

  
  print_board()
end

print_board()

# get user input

# row
while game_on

  if !BOARD[0].include?('-') && !BOARD[1].include?('-') && !BOARD[2].include?('-')
    puts 'AAAAAAANDA IZZA TIE!!!!'
    game_on = false
  end

  # get row
  loop do
    puts 'Enter your row: 1, 2 or 3'
    get_row = gets.chomp
    p get_row
    if row_choices.include?(get_row)
      break
    else
      puts "Invalid choice. Try again, It's not hard."
    end
  end

  # get column
  loop do
    puts 'Enter column: a b or c'
    get_column = gets.chomp
    if column_choices.include?(get_column)
      break
    else
      puts "Invalid choice. Try again. You can do it. Probably."
    end
  end

  # mark square
  case get_row
  when '1'
    if get_column == 'a'
      BOARD[0][0] = 'x'
      AVAILABLE_SLOTS[0] = nil
    elsif get_column == 'b'
      BOARD[0][1] = 'x'
      AVAILABLE_SLOTS[1] = nil
    elsif get_column == 'c'
      BOARD[0][2] = 'x'
      AVAILABLE_SLOTS[2] = nil
    end
  when '2'
    if get_column == 'a'
      BOARD[1][0] = 'x'
      AVAILABLE_SLOTS[3] = nil
    elsif get_column == 'b'
      BOARD[1][1] = 'x'
      AVAILABLE_SLOTS[4] = nil
    elsif get_column == 'c'
      BOARD[1][2] = 'x'
      AVAILABLE_SLOTS[5] = nil
    end

  when '3'
    if get_column == 'a'
      BOARD[2][0] = 'x'
      AVAILABLE_SLOTS[6] = nil
    elsif get_column == 'b'
      BOARD[2][1] = 'x'
      AVAILABLE_SLOTS[7] = nil
    elsif get_column == 'c'
      BOARD[2][2] = 'x'
      AVAILABLE_SLOTS[8] = nil
    end

  else
    puts 'Invalid input'
  end

  print_board()


  puts "Computer's turn..."
  computer_turn()

end
