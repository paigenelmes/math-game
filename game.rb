require './questions.rb'
require './players.rb'

class Game
  # Create Players 1 & 2, get each player to enter their name
    def initialize
      puts "Player 1, please enter your name: "
      p1Name = gets.chomp()
      @player1 = Players.new(p1Name)
      puts "Player 2, please enter your name: "
      p2Name = gets.chomp()
      @player2 = Players.new(p2Name)
      puts "It's #{p1Name} VS #{p2Name}! Let's start the game!"
    end

    # Determine whose turn it is and get input from the player
    def turn(player)
      puts "#{player.name}'s turn."
      question = Question.new()
      question.ask_question
      answer = gets.chomp()
      #Decrease lives by 1 if player's answer does not match the question's solution
      if answer.to_i != question.solution
        player.lives -= 1
        puts "Sorry, that answer is incorrect."
      else
        puts "Yay! That's correct!"
      end
    end

    # Start the game
    def start
      # Each player gets a turn
      turn(@player1)
      turn(@player2)

      #Display the score after each player takes their turn
      puts "#{@player1.name}'s score is: #{@player1.lives}/3"
      puts "#{@player2.name}'s score is: #{@player2.lives}/3"

      # If both players have lives above 0, start the game again
      if @player1.lives > 0 && @player2.lives > 0
        start
      # If player 1's lives are over 0 and player 2's lives are not, player 1 wins
      elsif @player1.lives > 0 
        puts "#{@player1.name} wins!"
      # If player 2's lives are over 0 and player 1's lives are not, player 1 wins
      elsif @player2.lives > 0 
        puts "#{@player2.name} wins!"
      # Otherwise it's a tie
      else
        puts "It's a tie!"
    end
  end
end