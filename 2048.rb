def swipe_left(row)
  row.select! { |num| num != 0 }

  row.each_with_index do |num, i|
    if row[i + 1] == num
      row[i] = num * 2
      row.delete_at(i + 1)
    end
  end

  until row.length == 4
    row.push(0)
  end

  row
end

p swipe_left([2, 0, 4, 8]) # => [2, 4, 8, 0]
p swipe_left([0, 4, 4, 8]) # => [8, 8, 0, 0]
p swipe_left([2, 2, 4, 4]) # => [4, 8, 0, 0]

def swipe_right(row)
  row.reverse!
  row.select! { |num| num != 0 }

  row.each_with_index do |num, i|
    if row[i + 1] == num
      row[i] = num * 2
      row.delete_at(i + 1)
    end
  end

  until row.length == 4
    row.push(0)
  end

  row.reverse
end

p swipe_right([2, 0, 4, 8]) # => [0, 2, 4, 8]
p swipe_right([0, 4, 4, 8]) # => [0, 0, 8, 8]
p swipe_right([2, 2, 4, 4]) # => [0, 0, 4, 8]
