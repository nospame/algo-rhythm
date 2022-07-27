def swipe_left(row)
  new_row = row.select { |num| num != 0 }

  new_row.each_with_index do |num, i|
    if new_row[i + 1] == num
      new_row[i] = num * 2
      new_row.delete_at(i + 1)
    end
  end

  until new_row.length == 4
    new_row.push(0)
  end

  new_row
end

p swipe_left([2, 0, 4, 8])
p swipe_left([0, 4, 4, 8])
p swipe_left([2, 2, 4, 4])
