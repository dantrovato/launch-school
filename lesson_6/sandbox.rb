INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
game_on = ''

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |     "
  puts "-----|-----|-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |     "
  puts ""
end

def initialize_board()
  new_board = {}
  (1..9).each do |num|
    new_board[num] = INITIAL_MARKER
  end
  new_board
end

def empty_squares(brd)
  brd.keys.select {|num| brd[num] == INITIAL_MARKER}
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Enter one of the following numbers: #{empty_squares(brd).join(', ')}")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("That's not a valid digit, dude.")
  end
  brd[square] = PLAYER_MARKER
  prompt("NoiSh.")
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
  [[1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

  winning_lines.each do |line|
    if  brd[line[0]] == PLAYER_MARKER &&
        brd[line[1]] == PLAYER_MARKER &&
        brd[line[2]] == PLAYER_MARKER
        return :player
    elsif  brd[line[0]] == COMPUTER_MARKER &&
        brd[line[1]] == COMPUTER_MARKER &&
        brd[line[2]] == COMPUTER_MARKER
        return :computer
    end
  end
  nil
end

def display_winner(brd)
  if someone_won?(brd)
    prompt("#{detect_winner(brd)} won!")
  else
    prompt("It's a tie!")
  end
end

def display_score(score)
  prompt("Player score is #{score[:player]}. Computer score is #{score[:computer]}")
end

def update_score(brd, score)
  score[detect_winner(brd)] += 1
end

def end_of_game?(score, number_rounds)
  score[:player] == number_rounds || score[:computer] == number_rounds
end

while game_on
  score = { player: 0, computer: 0 }
  prompt('Enter rounds to win')
  number_rounds = gets.chomp.to_i

  loop do
    board = initialize_board()
    loop do

      display_board(board)
      display_score(score)
      player_places_piece!(board)
      break if board_full?(board) || someone_won?(board)

      computer_places_piece!(board)
      break if board_full?(board) || someone_won?(board)
    end

    display_board(board)
    display_winner(board)
    update_score(board, score)

    break if end_of_game?(score, number_rounds)
  end

  game_on = false
end

prompt("Orite then. Be like that.")
