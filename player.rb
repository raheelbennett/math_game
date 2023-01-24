=begin
Player: will holder all information relater to the player, like name and score. and will update the score as well. 
-name
-score
-attr_accessor : name :score
=end

class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

end