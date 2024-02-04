# initializing the game
row1 = ['/', '/', '/']
row2 = ['/', '/', '/']
row3 = ['/', '/', '/']

class Square
  def initialize(default_value)
    @default_value = default_value
  end

  def X
    @default_value = 'X'
  end

  attr_accessor :default_value
end

# create the squares for each row with default value
s1 = Square.new('1')
row1[0] = s1.default_value

s2 = Square.new('2')
row1[1] = s2.default_value

s3 = Square.new('3')
row1[2] = s3.default_value

s4 = Square.new('4')
row2[0] = s4.default_value

s5 = Square.new('5')
row2[1] = s5.default_value

s6 = Square.new('6')
row2[2] = s6.default_value

s7 = Square.new('7')
row3[0] = s7.default_value

s8 = Square.new('8')
row3[1] = s8.default_value

s9 = Square.new('9')
row3[2] = s9.default_value

prompt = '> '
puts 'Asign a square from 1 to 9 X or O(o not zero)'
puts 'For example: s1.X or s1.O'
print prompt

while user_input = gets.chomp # loop while getting user input
  case user_input
  when 's1.X'
    puts 'Square 1 is X'
    row1[0] = s1.X
    p row1
    p row2
    p row3
    print prompt
  when 's2.X'
    puts 'Square 2 is X'
    row1[1] = s2.X
    p row1
    p row2
    p row3
    print prompt
  else
    puts 'Please use the correct input'
    print prompt # print the prompt, so the user knows to re-enter input
  end
end
