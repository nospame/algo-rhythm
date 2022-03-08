num = 2
primes = [2, 3]
while num < 100
  num += 1
  primes.each do |prime|
    if num % prime == 0
      break
    end
    primes << num
  end
  p primes
end
