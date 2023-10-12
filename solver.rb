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

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'

    elsif (number % 5).zero?
      'buzz'

    else
      number.to_s
    end
  end
end
