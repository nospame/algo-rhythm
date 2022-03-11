n = 1
i = 0
while i < 20
  n += 1
  prime = true
  range = (2...n)
  range.each do |i|
    if n % i == 0
      prime = false
      break
    end
  end
  i += 1 if prime
end
p n
