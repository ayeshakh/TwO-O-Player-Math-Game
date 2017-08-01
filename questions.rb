class Question

  attr_reader :answer
  def initialize
    @num1 = rand(1..5)
    @num2 = rand(1..5)

    @answer = @num1 + @num2
  end

  def check_answer(id, input)
    user_input = input.to_i
    # puts "id is: #{id}"
    # puts "user_input is: #{user_input}, typeof: #{user_input.class}"
    # puts "first number: #{@num1}"
    # puts "second number: #{@num2}"
    # puts "ans is #{@answer}, typeof: #{@answer.class}"

    if(@answer == user_input)
      puts "Player #{id}: YES! You are correct"
      return true
    elsif (@answer != user_input)
      puts "Player #{id}: Seriously? No!"
      return false
    else
      puts "Player #{id}: Please user_input a number"
    end
  end

  def print_question(id)
    puts "Player #{id}: What does #{@num1} plus #{@num2} equal?"
  end
end