# NOUNS

## Player = 
#   Initialize:
#     - name/ID : (user1 || user2)
#
#   Methods:
#     - life_down : (player.life -= 1)
#     
#
### user1 < Player
#     @name = name/ID
#     @self.lives : (3)
#     
#
### user2 < Player
#     @name = name/ID
#     @self.lives : (3)
#     

## Game = 
#   Initialize:
#     turn_number: (0) || no longer needed
#     
#   Methods:
#     - checks_zero : (true/false) T=new turn F=game_over?
#     - end_game?.to_s : 
#      ( {player} wins with score {player.life}/3 \n
#        ----- GAME OVER -----\n
#        Good bye! )
#     
#

### Turn < Game
#
#   Methods:
#     - generate_start_question.to_s : ( {current_player}: {generate_question} ) 
#     - get_current_player : (turn_number odd/even=determines current_player)
#     - generate_question : 
#     - get_current_score.to_s : 
#       ( P1: {player1.life}/3 vs 
#         P2: {player2.life}/3 )

#### Question 
#     - input.to_i : $stdin.gets.chomp
#   
#     - correct? : (true/false)

## Question generated by picking two numbers (1..20) ##
#              {rand(1..20) + rand(1..20)}
# ----------------------------------------------


#       {Game Start}
#------------------------------------
#
# Player 1: What does 5 plus 3 equal?
#       {start}
#
# > 9 
# {Input}
#
# Player 1: Seriously? No!
#       {correct?}
#
# P1: 2/3 vs P: 3/3
#       {Score}

# ----- NEW TURN -----
#       {Turn}

