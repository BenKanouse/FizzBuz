class FizzBuzz
  def self.run(number)
    return 'FizzBuzz' if self.is_buzz?(number) && self.is_fizz?(number)
    return 'Buzz' if self.is_buzz?(number)
    return 'Fizz' if self.is_fizz?(number)
    number
  end

  def self.is_buzz?(number)
    number % 5 == 0 || number.to_s.split('').include?('5')
  end

  def self.is_fizz?(number)
    number % 3 == 0 || number.to_s.split('').include?('3')
  end
end
