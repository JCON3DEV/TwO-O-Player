require_relative './questions.rb'
require_relative './player.rb'

class Game
  attr_accessor :lives
  # module Question
  # end
  # module Player
  # end
  # include Question
  # include Player

  def initialize
    @turn = 0
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
  end
  
  def display_status
    puts "=============="
    puts "\t Game Status"
    puts "=============="
    puts @player1.inspect
    puts @player2.inspect
  end
  def test
    puts @turn, @player1, @player2, @player1.lives
    puts @player1.alive? 
    puts @q1
    # Player.reduce_lives
    puts @player1.inspect
  end
  

end


game = Game.new()
game.test
game.display_status


#  Game - needs players array /instances
#  turn / as index 
#  game will  be responsible for put question
#  game will ask payer if they are still in
