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
