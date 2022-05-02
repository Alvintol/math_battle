class Player
  attr_reader :life

  def initialize name
    @name = name
    @life = 3    
  end

  def life_down
    @life -= 1
  end
end

user1 = Player.new('User1')
user2 = Player.new('User2')