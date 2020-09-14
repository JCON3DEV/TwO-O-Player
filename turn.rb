load 'questions.rb'
load 'player.rb'

class Turn
  include Question
  include Player
  @turn = 0
  
  def initialize
    @turn =+ 1
  end

  if @turn == 1
    puts "#{q1}"
  elsif @turn == 2
    puts "#{q2}"
  else @yurn == 3  
    puts "#{q3}"
  end

end