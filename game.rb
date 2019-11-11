require './player'
require './question'

class Game
 
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current = @player1
  end
 
  def start
    @current
    while @player1.life > 0 && @player2.life > 0 do 
      q = Question.new
      q.ask
      
      if q.is_correct? == false
        @current.minusLife
        if @current.life == 0
          return puts "~~~~~~~~~GAME OVER!~~~~~~~~~"
        end
        puts "Current life #{@current.life}"
        switch_player
        puts "~~~~~~~NEW TURN!~~~~~~~~~"
        puts "You're up #{@current.name}"
      elsif q.is_correct? == true
        switch_player
        puts "~~~~~~~NEW TURN!~~~~~~~~~"
      puts "You're up #{@current.name}"
      end
    end
    
  end
  
  def set_player
    @startingPlayer = @player1
  end

  def switch_player
    if @current == @player1
      @current = @player2
    elsif @current == @player2
      @current = @player1
  end
end

end