range = (1..20)
n = 0
divisible = false
while not divisible
  n += range.last * range.last - 1
  range.each do |i|           # loop through every number in range i
    if n % i == 0             # if n is divisible by a given number i
      range.each do |j|       # loop through every number in range j
        if n % j != 0         # if n is not divisible by any other number j
          divisible = false   #   divisible is false
          break               #   loop j breaks
        else                  # if n is divisible by every number j
          divisible = true    #   divisible is true, while loop breaks
        end
      end
    end
  end
end
p n
