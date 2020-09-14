# module Answers
#   def player_response(answer)
#     answer = "@a#{turn}" ? score += 1 : score +=0
#   end
# end


class Question

  def initialize(number_of_questions)
    @q1 = "what is 5 + 4?"
    @q2 = "what is 3 + 2?"
    @q3 = "what is 6 - 3?"
    @q4 = "what is 2 * 4?"
    @q5 = "what is 9 / 3?"
    @q6 = "what is 5 + 1?"
    @answer = [9, 5, 3, 8, 3, 6]
  end


end
# Game obj needs to include questions, player and Turns X

#  question would need to store string questions and answer X
#  player should sumbit answer to question 

# ?andy thinks a new instance of question should be created each turn

