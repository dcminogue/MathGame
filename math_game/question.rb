class Question
    attr_reader :num1, :num2
  
    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
    end
  
    def ask_question
      "What does #{@num1} plus #{@num2} equal?"
    end
  
    def check_answer(answer)
      answer.to_i == (@num1 + @num2)
    end
  end
  