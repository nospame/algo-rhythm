# # Given an array, write a function that returns an array that contains the original array’s values in reverse.

# # Input: [1, 2, 3, 4, 5]
# # Output: [5, 4, 3, 2, 1]

# # Input: ['a', 'b', 7, 8, 9]
# # Output: [9, 8, 7, 'b', 'a']

# # create a new variable starts as an empty array
# # loop through the original array from last to first
# # add each of those to the new array
# # return new array

# def reverse_array(array)
#   new_array = []

#   while !array.empty?
#     new_array << array.pop
#   end

#   return new_array
# end

# p reverse_array([1, 2, 3, 4, 5])
# p reverse_array(['a', 'b', 7, 8, 9])


# # Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

# #   Input: “hello, how are your porcupines today?”
# #   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

# # Input: "HELLO, how are you?"
# # Output: "hElLo, HoW ArE YoU?"

# # start with a blank string
# # using an index with a while loop
#   # go through every character in the string
# # if the index isn't even then upcase it
# # if the index is even or is 0, downcase it
# # add each character to a new string

# def alternating_case(string)
#   new_string = ''

#   i = 0
#   while i < string.length
#     new_string += string[i].downcase if i % 2 == 0 
#     new_string += string[i].upcase if i % 2 != 0
#     i += 1
#   end

#   return new_string
# end

# p alternating_case("hello, how are your porcupines today?")
# p alternating_case("HELLO, how are you?")


# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# Input: ["a", "bcd", "ef"]
# Output: ["abcd", "aef", "bcda" ...]

# Input: ["a", "b", "b"]
# Output: ["ab", "ab", "ba", "bb" ...]

# look through every string in the array
# for each of those strings, look at every other string and concatenate them

# add the resulting to a new array

# create an empty array to hold the new strings
# loop through the original array
#   while loop with an index
#   within that loop, loop through the same original array
#     while loop with an index
#       if the two indexes are the same, move on
#       if the indexes are different, concatenate them and add to new array

def string_combinations(strings)
  combined_strings = []
  strings.each_with_index do |string_i, i|
    strings.each_with_index do |string_j, j|
      if i != j
        combined_string = string_i + string_j
        combined_strings << combined_string
      end
    end
  end
  combined_strings
end

p string_combinations(["a", "b", "c", "d"])
p string_combinations(["a", "bcd", "ef"])
p string_combinations(["a", "b", "b"])


# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.

# look through each string in the array
# look through each character in each array
# want to compare array[0][0], array[1][0], array[2][0], array[1][0]...

# start with a variable to hold the common prefix
# loop through the string first
# while index < string.length
# loop through the array second
# set the current character to array[inner_index][outer_index]
# while index < array.length
# if the characters don't match, return my common prefix
# once the loop completes
# add the letter to my common prefix


def longest_prefix(strings)
  common_prefix = ""
  letter_index = 0
  while letter_index < strings[0].length
    current_char = strings[0][letter_index]
    word_index = 0
    while word_index < strings.length
      if strings[word_index][letter_index] != current_char
        return common_prefix
      end
      word_index += 1
    end
    common_prefix += current_char
    letter_index += 1
  end
end

p longest_prefix(["flower", "flow", "flight"])
p longest_prefix(["flower", "flow", "brand"])
p longest_prefix(["flower", "flow", "flowy"])