# create board
$row1 = [1, 2, 3]
$row2 = [4, 5, 6]
$row3 = [7, 8, 9]

# print board
def print_board
  p $row1
  p $row2
  p $row3
end

puts 'Initial Board'
print_board

# asign all square to the same rules
class Square
  # initialize an instance of a square / will have 9 for each number on the row
  def initialize(square)
    @square = square
  end

  # asign square the value X
  def X
    @square = 'X'
  end

  # asign square the value O
  def O
    @square = 'O'
  end
end

# create the instances of squares
sq1 = Square.new(sq1)
sq2 = Square.new(sq2)
sq3 = Square.new(sq3)
sq4 = Square.new(sq4)
sq5 = Square.new(sq5)
sq6 = Square.new(sq6)
sq7 = Square.new(sq7)
sq8 = Square.new(sq8)
sq9 = Square.new(sq9)

# turn counter
turn = 0

# default victory condition of X to 0 (false)
$won_x = 0

# behaivor of variable if X wins
def x_wins
  $won_x = 1
  puts 'X wins!'
end

# default victory condition of O to 0 (false)
$won_o = 0

# behaivor of variable if O wins
def o_wins
  $won_o = 1
  puts 'O wins!'
end

# continusly ask for user input until winning conditions is met
until $won_x == 1 || $won_o == 1
  # asign user input
  puts 'Asign 1x or 1o'
  user_input = gets.chomp

  # modify board based on user input
  case user_input
  when '1x'
    $row1[0] = sq1.X
    puts '1 is now X!'
  when '1o'
    $row1[0] = sq1.O
    puts '1 is now O!'

  when '2x'
    $row1[1] = sq2.X
    puts '2 is now X!'
  when '2o'
    $row1[1] = sq2.O
    puts '2 is now O!'

  when '3x'
    $row1[2] = sq3.X
    puts '3 is now X!'
  when '3o'
    $row1[2] = sq3.O
    puts '3 is now O!'

  when '4x'
    $row2[0] = sq4.X
    puts '4 is now X!'
  when '4o'
    $row2[0] = sq4.O
    puts '4 is now O!'

  when '5x'
    $row2[1] = sq5.X
    puts '5 is now X!'
  when '5o'
    $row2[1] = sq5.O
    puts '5 is now O!'

  when '6x'
    $row2[2] = sq6.X
    puts '6 is now X!'
  when '6o'
    $row2[2] = sq6.O
    puts '6 is now O!'

  when '7x'
    $row3[0] = sq7.X
    puts '7 is now X!'
  when '7o'
    $row3[0] = sq7.O
    puts '7 is now O!'

  when '8x'
    $row3[1] = sq8.X
    puts '8 is now X!'
  when '8o'
    $row3[1] = sq8.O
    puts '8 is now O!'

  when '9x'
    $row3[2] = sq9.X
    puts '9 is now X!'
  when '9o'
    $row3[2] = sq9.O
    puts '9 is now O!'

  else
    puts 'Invalid Input! Please use 1x // 1o'
    turn -= 1
  end

  # count turns
  turn += 1
  puts "Turn #{turn}!"

  # show status of the board
  print_board

  # winning conditions for X
  if $row1[0] == 'X' && $row1[1] == 'X' && $row1[2] == 'X'
    x_wins
  elsif $row2[0] == 'X' && $row2[1] == 'X' && $row2[2] == 'X'
    x_wins
  elsif $row3[0] == 'X' && $row3[1] == 'X' && $row3[2] == 'X'
    x_wins
  elsif $row1[0] == 'X' && $row2[0] == 'X' && $row3[0] == 'X'
    x_wins
  elsif $row1[1] == 'X' && $row2[1] == 'X' && $row3[1] == 'X'
    x_wins
  elsif $row1[2] == 'X' && $row2[2] == 'X' && $row3[2] == 'X'
    x_wins
  elsif $row1[0] == 'X' && $row2[1] == 'X' && $row3[2] == 'X'
    x_wins
  elsif $row1[2] == 'X' && $row2[1] == 'X' && $row3[0] == 'X'
    x_wins
  else
    $won_x = 0
  end

  # winning conditions for O
  if $row1[0] == 'O' && $row1[1] == 'O' && $row1[2] == 'O'
    o_wins
  elsif $row2[0] == 'O' && $row2[1] == 'O' && $row2[2] == 'O'
    o_wins
  elsif $row3[0] == 'O' && $row3[1] == 'O' && $row3[2] == 'O'
    o_wins
  elsif $row1[0] == 'O' && $row2[0] == 'O' && $row3[0] == 'O'
    o_wins
  elsif $row1[1] == 'O' && $row2[1] == 'O' && $row3[1] == 'O'
    o_wins
  elsif $row1[2] == 'O' && $row2[2] == 'O' && $row3[2] == 'O'
    o_wins
  elsif $row1[0] == 'O' && $row2[1] == 'O' && $row3[2] == 'O'
    o_wins
  elsif $row1[2] == 'O' && $row2[1] == 'O' && $row3[0] == 'O'
    o_wins
  else
    $won_o = 0
  end

  if turn == 9
    puts 'Draw!'
    break
  end
end
