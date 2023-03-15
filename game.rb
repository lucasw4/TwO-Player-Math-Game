class Game
  attr_accessor :correct

  def initialize(current_player)
    @num_1 = rand(20)
    @num_2 = rand(20)
    @answer = @num_1 + @num_2

    puts "#{current_player}: What does #{@num_1} + #{@num_2} equal?"
    question

  end

  def question 
    @p_answer = gets.chomp

    if @p_answer == @answer.to_s
      puts "YES! That is correct!"
      @correct = true

    else
      puts "NO! That is horribly wrong!"
      @correct = false
    end
  end
end
