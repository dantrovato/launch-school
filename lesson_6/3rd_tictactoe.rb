require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

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
        return 'Player'
    elsif  brd[line[0]] == COMPUTER_MARKER &&
        brd[line[1]] == COMPUTER_MARKER &&
        brd[line[2]] == COMPUTER_MARKER
        return 'Computer'
    end
  end
  nil
end

while true
  player_score = 0
  computer_score = 0
  loop do
    board = initialize_board()

    loop do

      display_board(board)
      player_places_piece!(board)
      break if board_full?(board) || someone_won?(board)

      computer_places_piece!(board)
      break if board_full?(board) || someone_won?(board)
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
