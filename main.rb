require_relative './questions.rb'
require_relative './player.rb'

class Game
  attr_accessor :lives
  def initialize
    @turn = 0
    @player1 = Player.new()
    @player2 = Player.new()
    @players = [@player1, @player2]
    @round = 1
  end

  puts "welcome to the Math game"
  puts "Ready Player 1?"
  gets.chomp
  puts "Ready Player 2?"
  gets.chomp

  def next_round
    
    puts "------------------------"
    puts " \t Round #: #{@round}"
    puts "------------------------"
    
    @players.rotate!

    @round += 1

  end


  def display_status
    puts "========================"
    puts "\t Game Status"
    puts "========================"
    @players.each{|player| puts "#{player} lives remaining #{player.lives}"}
  end

  # could not get player names to show
  # def winner
  #   winner = @players.find{|player| !player.alive? }
  #   puts "The winner is #{winner.name}"
  # end
  
  def game_over?
    @players.select{|player| player.alive?}.length <= 0
  end
  
  def play
    until (game_over?) do
      next_round
      @question = Question.new()
      puts "#{@players[0]}: What does #{@question.num1} plus #{@question.num2} equal?"

      player_guess = gets.chomp

      if @question.answer_check(player_guess)
        puts "That is correct! Well done!"
      else
        puts "Nope. Face-palm."
        @players[0].reduce_lives
      end      

      display_status

    end
    puts "\t Game over!"
    puts "----------- Good Bye ----------"
  end

end


my_game = Game.new()
my_game.play


#  Game - needs players array /instances
#  turn / as index 
#  game will  be responsible for put question
#  game will ask payer if they are still in
