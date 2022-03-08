num = 1
sum_num = 0
sum_sq = 0
100.times do
  sum_num += num
  sum_sq += num**2
  num += 1
end
diff = sum_num**2 - sum_sq
p diff
