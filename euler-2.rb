num_a = 1
num_b = 1
sum = 0
while num_b < 4_000_000
  if num_b % 2 == 0
    sum += num_b
  end
  num_a, num_b = num_b, num_a + num_b
end
p sum
