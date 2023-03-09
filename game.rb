require './questions.rb'
require './players.rb'

class Game
  # Create Players 1 & 2, get each player to enter their name
    def initialize
      puts "Player 1, please enter your name: "
      p1Name = gets.chomp()
      @player1 = Players.new(p1Name)
      puts "Player 2, please enter your name: "
      @p2Name = gets.chomp()
      @player2 = Players.new(p2Name)
      puts "It's #{p1Name} VS #{p2Name}! Let's start the game!"
    end
    # Start the game
    def game_start(questions)
      # Determine whose turn it is
      # Not sure how to do that
      # For now, let's set current player at 1 and inactive player at 2
      currentPlayer = @player1
      inactivePlayer = @player2
      # Empty string for user's answer
      answer = ""
      questions = Question.new(equation, solution)
      for question in questions
        #Decrease lives by 1 if player gets a wrong answer
        if answer != questions.solution
          currentPlayer.lives -= 1
        end
      end
      #Display the score
      puts "#{currentPlayer}'s score is: + #{currentPlayer.lives} + /3"
      puts "#{inactivePlayer}'s score is: + #{inactivePlayer.lives} + /3"
      # Test run the game
      puts game_start(questions)
  end
end
