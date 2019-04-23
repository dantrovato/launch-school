require 'pry'
require 'pry-byebug'

GOES_FIRST = 'choose'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
def prompt(msg)
  puts "=> #{msg}"
end

def print_board(brd)
  system 'clear'
  puts
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
  puts
end

def initialize_board
  hash = {}
  (1..9).each do |key|
    hash[key] = ' '
  end
  hash
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Enter square to mark: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Not a valid square, dude."
  end
  brd[square] = PLAYER_MARKER
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 1
    arr.first
  when 2
    "#{arr.first} #{word} #{arr.last}"
  else
    arr[-1] = "#{word} #{arr[-1]}"
    arr.join(delimiter)
  end
end

def empty_squares(brd)
  brd.keys.select { |key| brd[key] == INITIAL_MARKER }
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    # binding.pry
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      # binding.pry
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

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k,v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def detect_winner(brd)

  # [[1, 2, 3], [4, 5, 6], [7, 8, 9]] example
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def player_goes_first(brd, player_score, computer_score)
  loop do
    print_board(brd)
    prompt "Player score is #{player_score} and Computer's is #{computer_score}"
    player_places_piece!(brd)
    break if board_full?(brd) || someone_won?(brd)

    computer_places_piece!(brd)
    break if board_full?(brd) || someone_won?(brd)
    # binding.pry
  end
end

def computer_goes_first(brd, player_score, computer_score)
  loop do
    computer_places_piece!(brd)
    break if board_full?(brd) || someone_won?(brd)
    print_board(brd)
    prompt "Player score is #{player_score} and Computer's is #{computer_score}"

    player_places_piece!(brd)
    break if board_full?(brd) || someone_won?(brd)
  end
end

loop do
  player_score = 0
  computer_score = 0
  loop do
    board = initialize_board

    if GOES_FIRST == 'player'
      player_goes_first(board, player_score, computer_score)
    elsif GOES_FIRST == 'computer'
      computer_goes_first(board, player_score, computer_score)
    elsif GOES_FIRST == 'choose'
      loop do
        prompt "Choose who goes first (player or computer)"
        choice = gets.chomp.downcase
        GOES_FIRST = choice
        break if choice == 'player' || choice == 'computer'
        'Choose only player or computer.'
      end
    end


    print_board(board)
    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
    else
      prompt "It's a tie!"
    end

    if detect_winner(board) == 'Player'
      player_score += 1
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
    end

    # prompt "Wanna play again?"
    # play_again = gets.chomp
    # break if play_again.start_with?('n')
    break if player_score == 2 || computer_score == 2
  end
  break
end
prompt "Good bye!"
# p board
