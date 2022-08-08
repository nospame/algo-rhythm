# Chapter 8
# 1.
def array_intersection(arr1, arr2)
  arr1_hash = {}
  arr1.each { |num| arr1_hash[num] = true }
  intersection = arr2.select { |num| arr1_hash[num] }
end

p array_intersection([1, 2, 3, 4, 5], [0, 2, 4, 6, 8]) # => [2, 4]

# 2.
def first_duplicate(arr)
  arr_hash = {}
  arr.each do |item|
    if arr_hash[item]
      return item
    else
      arr_hash[item] = true
    end
  end
  nil
end

p first_duplicate(["a", "b", "c", "d", "c", "e", "f"]) # => "c"

# 3.
def missing_letter(str)
  alpha_hash = {}
  for i in 0...str.length do
    alpha_hash[str[i]] = true
  end
  ("a".."z").each { |char| return char if !alpha_hash[char] }
  nil
end

p missing_letter("the quick brown box jumps over the lazy dog") # => "f"

# 4.
def first_non_duplicate(str)
  char_count = Hash.new(0)
  str.chars.each { |char| char_count[char] += 1 }
  str.chars.each { |char| return char if char_count[char] == 1 }
  nil
end

p first_non_duplicate("minimum") # => "u"


#Chapter 9
# 4.
class Stack
  def initialize
    @data = []
  end

  def pop
    @data.pop
  end

  def push(data)
    @data.push(data)
  end

  def read
    @data.last
  end
end

def reverse_string(str)
  stack = Stack.new
  reversed_str = ''

  str.each_char { |char| stack.push(char) }

  while stack.read 
    reversed_str += stack.pop
  end

  reversed_str
end

p reverse_string("abcde") # => "edcba"


# Chapter 10
# 3.
def sum(low, high)
  if high == low
    return low
  end
  return high + sum(low, high - 1)
end

p sum(1, 10)

#4.
def print_numbers(arr)
  for item in arr do
    if item.class == Array
      print_numbers(item)
    else
      p item
    end
  end
end

array = [ 
  1, 
  2, 
  3, 
  [4, 5, 6], 
  7, 
  [8, 
    [9, 10, 11, 
      [12, 13, 14]
      ]
    ], 
    [15, 16, 17, 18, 19, 
        [20, 21, 22, 
          [23, 24, 25, 
            [26, 27, 29] 
          ], 30, 31
        ], 32
      ], 33
    ]

print_numbers(array)


# Chapter 11
# 1.
def total_chars(arr)
  return 0 if arr.length == 0
  return arr[0].length + total_chars(arr[1, arr.length - 1])
end

strings = ["ab", "c", "def", "ghij"]

p total_chars(strings)

# 2.
def only_evens(arr)
  return [] if arr.length == 0
  if arr[0] % 2 == 0
    return [arr[0]] + only_evens(arr[1, arr.length - 1])
  else
    return only_evens(arr[1, arr.length - 1])
  end
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p only_evens(numbers)

# 3.
def triangular_numbers(n)
  return 1 if n == 1
  return triangular_numbers(n - 1) + n
end

p triangular_numbers(7)

# 4.
# this is classic loop thinking, using an index variable
# def x_index(str, i = 0)
#   return i if str[0] == 'x'
#   return x_index(str[1..], i + 1)
# end

def x_index(str)
  return 0 if str[0] == 'x'
  return x_index(str[1..]) + 1
end

str = "abcdefghijklmnopqrstuvwxyz"

p x_index(str)

# 5.
def unique_paths(rows, cols)
  return 1 if rows == 1 || cols == 1
  return unique_paths(rows - 1, cols) + unique_paths(rows, cols - 1)
end

p unique_paths(3, 7)
