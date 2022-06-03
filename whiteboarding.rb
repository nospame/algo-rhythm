# Given an array, write a function that returns an array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

# Input: ['a', 'b', 7, 8, 9]
# Output: [9, 8, 7, 'b', 'a']

# create a new variable starts as an empty array
# loop through the original array from last to first
# add each of those to the new array
# return new array

def reverse_array(array)
  new_array = []

  while !array.empty?
    new_array << array.pop
  end

  return new_array
end

p reverse_array([1, 2, 3, 4, 5])
p reverse_array(['a', 'b', 7, 8, 9])





# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

# Input: "HELLO, how are you?"
# Output: "hElLo, HoW ArE YoU?"

# start with a blank string
# using an index with a while loop
  # go through every character in the string
# if the index isn't even then upcase it
# if the index is even or is 0, downcase it
# add each character to a new string

def alternating_case(string)
  new_string = ''

  i = 0
  while i < string.length
    new_string += string[i].downcase if i % 2 == 0 
    new_string += string[i].upcase if i % 2 != 0
    i += 1
  end

  return new_string
end

p alternating_case("hello, how are your porcupines today?")
p alternating_case("HELLO, how are you?")

  





