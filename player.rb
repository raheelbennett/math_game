=begin
Player: will holder all information relater to the player, like name and score(lives). and will update the score as well. 
-name
-lives
-attr_accessor : name :score
=end

class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 0
  end

end