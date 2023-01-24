=begin
MathQuestion: will have methods to generate two random number between 1-20 and form a question
-lowest number
-highest number
-value_1
-value_2
-method for generating random number between lowest and highest
-method for getting and setting value_1 and value_2
-method for returning a question
-mathod for verifying the answer and returning the output message
=end

class MathQuestion

  def initialize(lowNum, highNum)
    @lowNum = lowNum
    @highNum = highNum
    @value1 = 0
    @value2 = 0
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
    (answer == number.to_i) ? "Yes! You are correct" : "Seriously? No!"
  end

end

# MathQuestion
# question = MathQuestion.new(1, 20)
# puts question.newQuestion
# answer1 = gets.chomp
# puts question.verifyAnswer(answer1)