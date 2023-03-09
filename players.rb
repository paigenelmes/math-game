class Players 
  attr_accessor :name, :lives
  # Initialize player name and start with 3 lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  #Decrease lives by 1 if you get a wrong answer
  def wrong_answer
    @lives -= 1
  end
end