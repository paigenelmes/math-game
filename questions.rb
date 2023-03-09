class Question
  attr_accessor :equation, :solution
  def initialize (equation, solution)
    @equation = equation
    @solution = solution
  end

  # Generate 2 random numbers between 1 - 20
  randomNum1 = rand(1...20)
  randomNum2 = rand(1...20)

  # Generate a random operator (+, -, * /)
  operators = [:+, :-, :*, :/]
  randomOp = operators.sample

  # Put these together to create a random equation
  @equation = "What is #{randomNum1} #{randomOp} #{randomNum2}?"
  # Get the solution
  @solution = randomNum1.method(randomOp).(randomNum2)
end