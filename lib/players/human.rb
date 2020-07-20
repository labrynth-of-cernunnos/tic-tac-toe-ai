module Players
  class Human < Player
    attr_reader :token

    def initialize(token)
      @token = token
    end

    def move(board)
      puts "\u001b[34mPlease select your square: 1- 9\u001b[37;1m"
      gets.chomp
    end
  end
end
