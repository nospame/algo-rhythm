require 'csv'

# generate the key to assign each letter a value
key = {}
('A'..'Z').each.with_index(1) {|letter, i| key[letter] = i}

# read in the names file as a csv
names = CSV.read("p022_names.txt")[0].sort

# sort the names, get the value for each, and total them up
total = 0
names.each.with_index(1) do |name, i|
  total += name.chars.map{|letter| key[letter]}.sum * i
end

p total
