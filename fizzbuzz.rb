# Given an array of numbers 1 -> 100, write a function that returns that same set of numbers expect:
# - If a number is divisible by 3, substitute the number for 'FIZZ'
# - If a number is divisible by 5, substitute the number for 'BUZZ'
# - If a number is divisible by both 3 and 5, substitute the number for 'FIZZBUZZ'
#
# Output example: [1, 2, 'FIZZ', 4, 'BUZZ', 'FIZZ', 7, ... 13, 14, 'FIZZBUZZ', 16, 17, 'FIZZ' ...]

def fizz_buzz(numbers)
  # numbers.map do |number|
  #   if number % 15 == 0
  #     "FIZZBUZZ"
  #   elsif number % 5 == 0
  #     "BUZZ"
  #   elsif number % 3 == 0
  #     "FIZZ"
  #   else
  #     number
  #   end
  # end

  numbers.map do |number|
    output = ''
    output += "FIZZ" if number % 3 == 0
    output += "BUZZ" if number % 5 == 0
    output != '' ? output : number
  end
end

p fizz_buzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])