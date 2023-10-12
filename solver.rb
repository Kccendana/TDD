class Solver
  def factorial(number)
    result = 1
    while number > 1
      result *= number
      number -= 1
    end
    result
  end

  def reverse(word)
    word.reverse
  end
end
