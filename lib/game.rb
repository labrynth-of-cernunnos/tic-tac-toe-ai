class Game
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  attr_accessor :board, :player_1, :player_2

  def initialize(player_1=Players::Human.new("X"), player_2=Players::Human.new("O"), board=Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end

  def current_player
    board.cells.select {|cell| cell == " "}.count.even? ? player_2 : player_1
  end

  def select_move(player)
    puts "Player ".light_blue + "#{player.token}" + " please select your move".light_blue
    puts ""
  end

  def won?
    WIN_COMBINATIONS.detect do |i|
      cell = board.cells
      cell[i[0]] != " " && cell[i[0]] == cell[i[1]] && cell[i[1]] != " " && cell[i[1]] == cell[i[2]]
    end
  end

  def draw?
    !won? && board.full?
  end

  def cats_game
    puts ""
    puts "   CAT'S GAME!",light_yellow
    puts ""
    puts "#{board.display}"
    sleep(3)
  end

  def over?
    draw? || won?
  end

  def winner
    if won?
      index = won?.first
      return board.cells[index].to_s
    end
  end

  def congratulate_winner
    puts ""
    puts "CONGRATULATIONS #{winner}".light_red
    puts ""
    puts"   YOU'VE WON!".light_yellow
    puts ""
    puts "#{board.display}"
    sleep(3)
  end

  def invalid_move
    puts ""
    puts "Invalid Move".light_red
    puts ""
    sleep(1)
  end

  def turn
    player = current_player
    select_move(player)
    board.display
    sleep(1) if player.class == Players::Computer
    board_move = player.move(board)

    if board.valid_move?(board_move)
      board.update(board_move, player)
    elsif !board.valid_move?(board_move)
      invalid_move
      turn
    end
  end

  def play
    while !over?
      turn
    end
    if draw?
      cats_game
    else
      congratulate_winner
    end
  end
end
