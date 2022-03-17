require 'csv'

# generate the key to assign each letter a value
key = {}
i = 1
('A'..'Z').each do |letter|
  key[letter] = i
  i += 1
end

# read in the names file as a csv
names = CSV.read("p022_names.txt")[0]

# sort the names, get the value for each, and total them up
i = 1
total = 0
names.sort.each do |name|
  total += name.chars.map{|letter| key[letter]}.sum * i
  i += 1
end

p total
