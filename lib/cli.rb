class Cli
  attr_accessor :play

  def initialize(play='yes')
    @play = play
  end

  def greet_user
    system "clear"
    puts "WELCOME TO TIC TAC TOE WITH AI!".red
    sleep(1)
  end

  def player_number
    puts ""
    puts "Please select the number of players: ".light_blue + " 0".light_yellow + "," + " 1".light_red + "," + "or" + " 2".light_blue
    puts ""
    gets.strip
  end

  def first_player
    puts ""
    puts "Would you like to be".light_blue + " X ".light_red + "  yes ".light_green + "/" + " no".light_red
    puts ""
    gets.strip.downcase
  end

  def play_x_starts
    puts ""
    puts "Player ".light_blue + "X".light_red + " goes first!".light_blue
    puts ""
  end

  def invalid_input
    puts ""
    puts "Invalid input".light_red
    puts ""
    sleep(1)
  end

  def turn
    token_x = first_player
    if token_x == 'yes'
       Game.new(Players::Human.new("X"), Players::Computer.new("O")).play
    elsif token_x == 'no'
       Game.new(Players::Computer.new("X"), Players::Human.new("O")).play
    else
       invalid_input
       turn
    end
  end

  def another_round
    puts ""
    puts "Would you like to play again?" + "   yes ".green + "/" + " no".light_red
    user_says = gets.strip.downcase

    if user_says == 'no'
      self.play= "no"
      say_goodbye
    elsif user_says == 'yes'
       play = "yes"
    else
      invalid_input
      another_round
    end
  end

  def say_goodbye
    sleep(1)
    puts ""
    puts "UNTIL NEXT TIME!".red
    puts "End of line".green
  end
end
