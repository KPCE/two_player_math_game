require_relative "turns"

class NewGame
  
  @@number_of_turns = 0

  def initialize()
    @current_player = 1
    @game_over = false

  end

  def run
    @player1 = Players.new("Player 1")
    @player2 = Players.new("Player 2")
    @@number_of_turns += 1
    while !@game_over do
      if @current_player == 3
        @current_player = 1
      end
      if @current_player == 1
        @first = Turns.new(@player1)
        @first.a_turn
  
        if @first.winner == true
          puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
          puts " ----- NEW TURN ----- "
        else
          @player1.score -= 1
          
          if @player1.score == 0
            @game_over = true
            puts "Player 2 wins with a score of #{@player2.score}/3"
            puts "----- GAME OVER -----"
            puts "Good bye!"
          else
            puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
            puts " ----- NEW TURN ----- "
          end
          
        end
      else 
        @first = Turns.new(@player2)
        @first.a_turn
  
        if @first.winner == true
          puts "P1: #{@player2.score}/3 vs P2: #{@player2.score}/3"
          puts " ----- NEW TURN ----- "
        else
          @player2.score -= 1

          if @player2.score == 0
            @game_over = true
            puts "Player 1 wins with a score of #{@player1.score}/3"
            puts "----- GAME OVER -----"
            puts "Good bye!"
          else
            puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
            puts " ----- NEW TURN ----- "
          end
          
        end
      end
      @current_player += 1
    end

  end

end