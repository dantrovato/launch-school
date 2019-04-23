require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
[[1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
GOES_FIRST = 'choose'

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
    prompt("Enter one of the following numbers: #{joinor(empty_squares(brd))}")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("That's not a valid digit, dude.")
  end
  brd[square] = PLAYER_MARKER
  prompt("NoiSh.")
end

def joinor(arr, delimiter= ', ', word= 'or ')
  case arr.size
  when 1
    arr.first
  when 2
    "#{arr.first} #{word}#{arr.last}"
  else
    arr[-1] = word + arr.last.to_s
    "#{arr.join(delimiter)}"
  end
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line| # [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    square = 5 if brd[5] == INITIAL_MARKER
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def find_at_risk_square(line, brd, marker) # brd = {1 => ' ', 2 => 'X'} etc.
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k,v| line.include?(k) && v == INITIAL_MARKER}.keys[0]
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if  brd[line[0]] == PLAYER_MARKER &&
        brd[line[1]] == PLAYER_MARKER &&
        brd[line[2]] == PLAYER_MARKER
        return 'Player'
    elsif  brd[line[0]] == COMPUTER_MARKER &&
        brd[line[1]] == COMPUTER_MARKER &&
        brd[line[2]] == COMPUTER_MARKER
        return 'Computer'
    end
  end
  nil
end

def player_goes_first(board)
  loop do

    display_board(board)
    player_places_piece!(board)
    break if board_full?(board) || someone_won?(board)

    computer_places_piece!(board)
    break if board_full?(board) || someone_won?(board)
  end
end

def computer_goes_first(board)
  loop do
    computer_places_piece!(board)
    display_board(board)
    break if board_full?(board) || someone_won?(board)

    player_places_piece!(board)
    break if board_full?(board) || someone_won?(board)
  end
end

while true
  player_score = 0
  computer_score = 0
  loop do
    board = initialize_board()

    if GOES_FIRST == 'player'
      player_goes_first(board)
    elsif GOES_FIRST == 'computer'
      computer_goes_first(board)
    elsif GOES_FIRST == 'choose'
      prompt "Choose who goes first; player or computer"
      choice = gets.chomp.downcase
      if choice.start_with?('p')
        GOES_FIRST = 'player'
      elsif choice.start_with?('c')
        GOES_FIRST = 'computer'
      else
        prompt "player or computer?"
      end
    end

    display_board(board)

    if someone_won?(board)
      if detect_winner(board) == 'Player'
        player_score += 1
      elsif detect_winner(board) == 'Computer'
        computer_score += 1
      end
      prompt("#{detect_winner(board)} won!")
    else
      prompt("It's a tie!")
    end
    break if player_score == 2 || computer_score == 2
  end
  break
end
prompt("BYYYYEEEEE.")
