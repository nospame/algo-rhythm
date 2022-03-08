i = 100
lg_pal = 0
while i < 1000
  j = i
  while j < 1000
    num = i * j
    if num.to_s.reverse == num.to_s
      lg_pal = num if lg_pal < num
    end
    j += 1
  end
  i += 1
end
p lg_pal
