n = 1
prev = n
i = 2
while n.digits.length < 1_000
  prev, n = n, n+prev
  i += 1
end
p "#{i}.  #{n}"
