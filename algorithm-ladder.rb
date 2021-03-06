# The Collatz Conjecture or 3x+1 problem can be summarized as follows:

# Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely. The conjecture states that no matter which number you start with, you will always reach 1 eventually.

# Given a number n, return the number of steps required to reach 1.

# Examples
# Starting with n = 12, the steps would be as follows:

# 12
# 6
# 3
# 10
# 5
# 16
# 8
# 4
# 2
# 1

# Resulting in 9 steps. So for input n = 12, the return value would be 9.

def collatz_steps(n)

  # until n == 1
  #   if n % 2 == 0
  #     n /= 2
  #   else
  #     n = 3 * n + 1
  #   end
  #   count += 1
  # end
  # return count

  if n == 1
    return 0
  else
    n = n % 2 == 0 ? n / 2 : 3 * n + 1
    return collatz_steps(n) + 1
  end
end

# p collatz_steps(12)
# p collatz_steps(27)


# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_multiple(digits)
  # inefficient: probably don't run this for more than 4 digits
  max_num = ("9" * digits).to_i
  min_num = ("9" * (digits - 1)).to_i

  num1 = max_num
  large_palindrome = 0
  while num1 > min_num
    num2 = num1
    while num2 > min_num
      product = num1 * num2
      if product.digits == product.digits.reverse
        large_palindrome = product if product > large_palindrome
        break
      else
        num2 -= 1
      end
    end
    num1 -= 1
  end
  return large_palindrome
end

p largest_palindrome_multiple(2)
# p largest_palindrome_multiple(4)


# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Specifically use nested loops to solve this exercise even though there are other approaches as well.

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

# def two_sum(numbers)
#   for i in 0...numbers.length do
#     for j in (i + 1)...numbers.length do
#       return [numbers[i], numbers[j]] if numbers[i] + numbers[j] == 10
#     end
#   end
#   return false
# end

# p two_sum([2, 5, 3, 1, 0, 7, 11])

def two_sum_linear(numbers)
  numbers_hash = {}
  numbers.each do |number|
    if numbers_hash[number]
      return [numbers_hash[number], number]
    else
      numbers_hash[10 - number] = number
    end
  end
  return false
end

p two_sum_linear([2, 5, 3, 1, 0, 7, 11])

