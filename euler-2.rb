num_a = 1
num_b = 1
fib = num_b
sum = 0
while fib < 4_000_000
  if fib % 2 == 0
    sum += fib
  end
  fib = num_a + num_b
  num_a = num_b
  num_b = fib
end
p sum
