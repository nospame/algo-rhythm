num = 1
sum = 0
while num < 1000
  if num % 3 == 0 || num % 5 == 0
    sum += num
  end
  num += 1
end
p sum