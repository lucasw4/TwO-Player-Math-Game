require './player.rb'
require './game.rb'

class Main
  
  def initialize
    @current_player = "Player 1"

    puts "#{@current_player}"

    @first_player = Player.new
    @second_player = Player.new

    @end = false

    until @end
      new_turn
    end

  end

  def new_turn 

    puts "--- NEW TURN ---"
    ask_question = Game.new(@current_player)

    if !ask_question.correct
      incorrect
    end

    if @current_player == "Player 1"
      @current_player = "Player 2"
    else
      @current_player = "Player 1"

    end

    puts "P1: #{@first_player.health}/3 vs P2: #{@second_player.health}/3"
  end

  def incorrect

    if @current_player == "Player 1"
      @first_player.wrong
      
      if @first_player.health == 0
        @end = true
        puts "--- GAME OVER ---"
      end

    else
      @second_player.wrong

      if @second_player.health == 0
        @end = true
        puts "--- GAME OVER ---"
      end
    end
  end
end

start = Main.new