class Board
  attr_accessor :cells

  def initialize
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display
    # puts "    \u001b[31m#{cells[0]}\u001b[37;1m | \u001b[31m#{cells[1]}\u001b[37;1m | \u001b[31m#{cells[1]}\u001b[37;1m "
    puts "    #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "   -----------"
    puts "    #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "   -----------"
    puts "    #{cells[6]} | #{cells[7]} | #{cells[8]} "
    puts ""
  end

  def position(user_input)
    index = user_input.to_i - 1
    cells[index]
  end

  def full?
    cells.all? {|c| c != " "}
  end

  def turn_count
    cells.select {|c| c != " "}.count
  end

  def taken?(user_input)
    index = user_input.to_i - 1
    cells[index] == "X" || cells[index] == "O"
  end

  def valid_move?(user_input)
    input = user_input.to_i
    (1..9).include?(input) && !taken?(input) ? true : false
  end

  def update(user_input, player)
    index = user_input.to_i - 1
    cells[index] = colorize_token(player) if valid_move?(user_input)
  end

  def colorize_token(player)
    player.token == 'X' ? "\u001b[31mX\u001b[37;1m" : "\u001b[33mO\u001b[37;1m"
  end
end
