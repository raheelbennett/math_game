=begin
MathQuestion: will have methods to generate two random number between 1-20 and form a question
-lowest number
-highest number
-value_1
-value_2
-if the answer is correct: correctAnswer
-method for generating random number between lowest and highest
-method for getting and setting value_1 and value_2
-method for returning a question
-mathod for verifying the answer, updating correctAnswer and returning the output message
=end

class MathQuestion
  attr_reader :correctAnswer

  def initialize(lowNum, highNum)
    @lowNum = lowNum
    @highNum = highNum
    @value1 = 0
    @value2 = 0
    @correctAnswer = false
  end

  def generateRandomNumber
    rand(@lowNum..@highNum)
  end

  def setValues
    @value1 = generateRandomNumber
    @value2 = generateRandomNumber
  end

  def newQuestion
    setValues
    "What does #{@value1} plus #{@value2} equal?"
  end

  def verifyAnswer(number)
    answer = @value1 + @value2
    if answer == number.to_i
      @correctAnswer = true
      return "Yes! You are correct"
    else 
      @correctAnswer = false
      return "Seriously? No!"
    end
  end

end

# MathQuestion
# question = MathQuestion.new(1, 20)
# puts question.newQuestion
# answer1 = gets.chomp
# puts question.verifyAnswer(answer1)