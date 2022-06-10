# # # Given an array, write a function that returns an array that contains the original array’s values in reverse.

# # # Input: [1, 2, 3, 4, 5]
# # # Output: [5, 4, 3, 2, 1]

# # # Input: ['a', 'b', 7, 8, 9]
# # # Output: [9, 8, 7, 'b', 'a']

# # # create a new variable starts as an empty array
# # # loop through the original array from last to first
# # # add each of those to the new array
# # # return new array

# # def reverse_array(array)
# #   new_array = []

# #   while !array.empty?
# #     new_array << array.pop
# #   end

# #   return new_array
# # end

# # p reverse_array([1, 2, 3, 4, 5])
# # p reverse_array(['a', 'b', 7, 8, 9])


# # # Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

# # #   Input: “hello, how are your porcupines today?”
# # #   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

# # # Input: "HELLO, how are you?"
# # # Output: "hElLo, HoW ArE YoU?"

# # # start with a blank string
# # # using an index with a while loop
# #   # go through every character in the string
# # # if the index isn't even then upcase it
# # # if the index is even or is 0, downcase it
# # # add each character to a new string

# # def alternating_case(string)
# #   new_string = ''

# #   i = 0
# #   while i < string.length
# #     new_string += string[i].downcase if i % 2 == 0 
# #     new_string += string[i].upcase if i % 2 != 0
# #     i += 1
# #   end

# #   return new_string
# # end

# # p alternating_case("hello, how are your porcupines today?")
# # p alternating_case("HELLO, how are you?")


# # Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# # Input: ["a", "b", "c", "d"]
# # Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# # Input: ["a", "bcd", "ef"]
# # Output: ["abcd", "aef", "bcda" ...]

# # Input: ["a", "b", "b"]
# # Output: ["ab", "ab", "ba", "bb" ...]

# # look through every string in the array
# # for each of those strings, look at every other string and concatenate them

# # add the resulting to a new array

# # create an empty array to hold the new strings
# # loop through the original array
# #   while loop with an index
# #   within that loop, loop through the same original array
# #     while loop with an index
# #       if the two indexes are the same, move on
# #       if the indexes are different, concatenate them and add to new array

# def string_combinations(strings)
#   combined_strings = []
#   strings.each_with_index do |string_i, i|
#     strings.each_with_index do |string_j, j|
#       if i != j
#         combined_string = string_i + string_j
#         combined_strings << combined_string
#       end
#     end
#   end
#   combined_strings
# end

# p string_combinations(["a", "b", "c", "d"])
# p string_combinations(["a", "bcd", "ef"])
# p string_combinations(["a", "b", "b"])


# # Write a function to find the longest common prefix string amongst an array of strings.

# # If there is no common prefix, return an empty string "".

# # Example 1:

# # Input: ["flower","flow","flight"]
# # Output: "fl"
# # Example 2:

# # Input: ["dog","racecar","car"]
# # Output: ""
# # Explanation: There is no common prefix among the input strings.
# # Note:

# # All given inputs are in lowercase letters a-z.

# # look through each string in the array
# # look through each character in each array
# # want to compare array[0][0], array[1][0], array[2][0], array[1][0]...

# # start with a variable to hold the common prefix
# # loop through the string first
# # while index < string.length
# # loop through the array second
# # set the current character to array[inner_index][outer_index]
# # while index < array.length
# # if the characters don't match, return my common prefix
# # once the loop completes
# # add the letter to my common prefix


# def longest_prefix(strings)
#   # common_prefix = ""
#   # letter_index = 0
#   # while letter_index < strings[0].length
#   #   current_char = strings[0][letter_index]
#   #   word_index = 0
#   #   while word_index < strings.length
#   #     if strings[word_index][letter_index] != current_char
#   #       return common_prefix
#   #     end
#   #     word_index += 1
#   #   end
#   #   common_prefix << current_char
#   #   letter_index += 1
#   # end

#   strings.sort_by!{ |string| string.length }
#   check_string = strings[0]
#   strings.each do |string|
#     index = check_string.length - 1
#     unless string.start_with?(check_string)
#       index -= 1
#       check_string = check_string[0...index]
#     end
#   end
#   return check_string
# end

# p longest_prefix(["flower", "flow", "flight"])
# p longest_prefix(["flower", "flow", "brand"])
# p longest_prefix(["flower", "flow", "flowy"])
# p longest_prefix(["flower"])


# Given an array of social media posts and a hash of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number with the person's actual name.

# For example, given this array of posts (note that the submitted_by is an id number):

# [
# {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
# {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
# {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# ]

# And this hash of users (the key is the id number and the value is the user's real name):

# users = {403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q."}

# Return the array of posts as follows:

# [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

# look at each item in the posts array
# get the submitted_by (id) from each post
# find the name associated with that id from the users hash
# replace the submitted_by value with the name 

# new array to store the posts
# each loop for the posts array
#   access post[:submitted_by] => id no
#     set :id_no = post[:submitted_by]
#   access users[:id_no] => name
#     set :username = users[:id_no]
#   set post[:submitted_by] = :username
# new array << post

def id_to_username(posts, users)
  # modified_posts = []
  # posts.each do |post|
  #   id_no = post[:submitted_by]
  #   username = users[id_no]
  #   post[:submitted_by] = username
  #   modified_posts << post
  # end
  # modified_posts

  posts.map do |post|
    post[:submitted_by] = users[post[:submitted_by]]
    post
  end
end

pp id_to_username(
  [{title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
  {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
  {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
  {title: 'Mondays are the worst', submitted_by: 403, likes: 644}],
  {403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q."} )
  