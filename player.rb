class Player
  attr_reader :life, :name

  def initialize name
    @name = name
    @life = 3    
  end

  def life_down
    @life -= 1
  end
end

# player1 = Player.new('Player 1')
# player2 = Player.new('Player 2')

# puts player1.life
# puts player2.life
# player1.life_down
# player2.life_down
# puts player1.life
# puts player2.life