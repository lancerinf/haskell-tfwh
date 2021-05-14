infinity :: Integer
infinity = 1 + infinity

three :: Integer -> Integer
three n = 3

main = print(three infinity)
