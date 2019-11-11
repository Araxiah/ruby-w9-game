require 'io/console'

class Question
 
 def initialize
  @is_correct = nil
  @number1 = rand(10)
  @number2 = rand(10)
  @answer = @number2 + @number1
  @player_answer
 end
  
  def ask

    puts "What is #{@number1} plus #{@number2}"
    @player_answer = gets.chomp

    @is_correct = @player_answer.to_i == @answer

    if @is_correct
      puts "Woo you got it right!"
    else
      puts "RIP sucks to suck, -1 life"
    end
  end

  def is_correct? 
    @is_correct
  end

end