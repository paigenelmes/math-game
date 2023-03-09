class Players 
  attr_accessor :name, :lives
  # Initialize player name and start with 3 lives
  def initialize(name)
    @name = name
    @lives = 3
  end
end