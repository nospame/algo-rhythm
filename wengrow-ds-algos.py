# Chapter 12
#1.
def addUntil100(list):
    if len(list) == 0:
        return 0
    subtotal = addUntil100(list[1::])
    if list[0] + subtotal > 100:
        return subtotal
    else:
        return list[0] + subtotal

print(addUntil100([1, 2, 98, 3, 4, 804, 63]))

#2. work in progress...
def golomb(n, memo={}):
    print(n)
    if n == 1:
        return 1
    if n in memo:
        return n - memo[n]
    else:
        return golomb(
        n - golomb(
                golomb(
                    n - 1
                )
            )
        )

print(golomb(17))

#3.