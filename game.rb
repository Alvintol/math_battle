require './turn'

class Game

  def initialize 
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
    @turn = Turn.new(@player1, @player2)
  end

  def checks_zero
    @player1.life == 0 || @player2.life == 0 ?
    end_game.to_s : 
    @turn.start
  end

  def end_game
    abort("#{@current_player.name} wins with score #{@current_player.life}/3 \n
    ----- GAME OVER -----\n
    Good Bye!")
  end

  def start
    puts "----- LET'S GO! -----"
    while @player1.life != 0 || @player2.life != 0
    checks_zero
    end
  end
end
