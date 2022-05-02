class Turn
  
  def initialize player1, player2
    @player1 = player1
    @player2 = player2
    @current_player = @player1 
    @inactive_player = @player2
    @correct_answer = 0
    @add_one = 0
    @add_two = 0
  end
  
  def generate_start_question
    puts "#{@current_player.name}: #{generate_question}"
  end
  
  def get_current_player
    @current_player, @inactive_player = 
    @inactive_player, @current_player
  end
  
  def generate_question
    @add_one = rand(1..20) 
    @add_two = rand(1..20)
    @correct_answer = (@add_one + @add_two)
    p "What does #{@add_one} and #{@add_two} equal?"
  end
  
  def correct?
    print "> "
    answer = gets.chomp
    answer.to_i == @correct_answer.to_i
  end

  def get_current_score
    p "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3 "
  end

  def start
    generate_start_question
    if correct?  
      p "Great work!" 
      
    else 
      p "Eat rocks!"
      @current_player.life_down
    end
    get_current_score
    get_current_player
  end
end

# turn = Turn.new("player 1", 'player 2')
# turn.generate_question