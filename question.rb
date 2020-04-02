class Question

  attr_accessor :answer, :prompt

  def initialize
    @number1 = rand(0..20)
    @number2 = rand(0..20)
    @answer = @number1 + @number2
    @prompt = "What does #{@number1} plus #{@number2} equal?"
  end


end