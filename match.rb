class Match

  attr_reader :players

  def initialize
    @players = [Player.new(1), Player.new(2)]

    @current_player = @players[0]
  end

  def play
    @turn = 1
    while(@players[0].lives > 0 && @players[1].lives > 0)

      @question= Question.new
      @question.print_question(@current_player.id)
      input = gets.chomp
        if(!@question.check_answer(@current_player.id, input))
           # puts "player #{@current_player.id} has life: #{@current_player.lives}"
          @current_player.reduce_life
          # puts "player #{@current_player.id} has life left: #{@current_player.lives}"
        end
        @turn += 1
          @current_player = @turn % 2 == 0 ? @players[1] : @players[0]
          puts "P1: #{@players[0].lives}/3, P2: #{@players[1].lives}/3"


    end
  end
end