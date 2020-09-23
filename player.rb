class Player
  attr_reader :lives
  attr_writer :name

  def initialize
    @lives = 3
  end


  def answer(turn)
    answer.push($stdin.to_i)
  end

  def lives_remaining(lives)
    puts lives
  end

  def reduce_lives
    @lives -= 1
  end

  def alive?
    @lives > 0
  end

end

# player score / no of lives X
# getter only method for lives X
# player coulkd output lives  X
# player alive t/f  X
# player should decrerase own lives
# game can call method onplayer to reduce and compare if still alive
# after wrong answers

