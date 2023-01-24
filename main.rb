require './game'
require './player'
require './math_question'


player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = MathQuestion.new(1, 20)
newGame = Game.new(player1, player2, game, 3)
newGame.play
=begin
MathQuestion

=end

# question = MathQuestion.new(1, 20)
# puts question.newQuestion
# answer = gets.chomp
# puts question.verifyAnswer(answer)