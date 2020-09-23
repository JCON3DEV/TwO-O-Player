# module Answers
#   def player_response(answer)
#     answer = "@a#{turn}" ? score += 1 : score +=0
#   end
# end


class Question
    # attr_reader: :num1, :num2

    # def initialize 
      
    # end

  def num1
    @num1 = 1 + rand(10)
  end

  def num2
    @num2 = 1 + rand(10)
  end

  def answer_check(input)
    input.to_i == (@num1 + @num2)
  end

end
# Game obj needs to include questions, player and Turns X

#  question would need to store string questions and answer X
#  player should sumbit answer to question 

# ?andy thinks a new instance of question should be created each turn

