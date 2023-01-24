=begin
Game: will hold logic for the command line interface. starting and ending the game, managing score and running the loop of the game
-player1
-player2
-current player
-max lives
-game status (running or over)
-method for switching current_player
-method for updating and displaying players scores
-method for starting the game 
-method for ending the game 
-I/O
=end

class Game

  def initialize(player1, player2, game, maxLives)
    @player1 = player1 #object
    @player2 = player2 #object
    @player1.lives = maxLives
    @player2.lives = maxLives
    @game = game #object
    @maxLives = maxLives #number
    @P1Score = ""
    @P2Score = ""
    @currentPlayer = @player1
    @gameOver = false 
  end

  def switchPlayer
    @currentPlayer = (@currentPlayer == @player1) ? @player2 : @player1
  end

  def updateScore
    !@game.correctAnswer && @currentPlayer.lives -= 1
    @p1Score = "#{@player1.lives}/#{@maxLives}"
    @p2Score = "#{@player2.lives}/#{@maxLives}"

    if @player1.lives == 0 || @player2.lives == 0
      @gameOver = true
      puts @player1.lives == 0 ? "#{@player2.name} wins with a score of #{@p2Score}" : "#{@player1.name} wins with a score of #{@p1Score}" 
      puts "--- Game Over --- \n Good bye!"
    else 
      puts "P1: #{@p1Score} vs P2: #{@p2Score}" 
      puts "--- NEW TURN ---"
    end
  end


   def play
    while !@gameOver
      player = @currentPlayer.name
      puts "#{player}: #{@game.newQuestion}"
      input = gets.chomp
      verification = @game.verifyAnswer(input)
      puts "#{player}: #{verification}"
      updateScore   
      switchPlayer
    end

  end


end

