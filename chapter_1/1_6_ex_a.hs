double :: Integer -> Integer
double x = 2*x

-- main = do
--   print (map double [1,4,4,3])
--   print (map (double . double) [1,4,4,3])
--   print (map double [])

arr0 :: [[Integer]]
arr0 = [[1],[2],[3]]

arr1 :: [Integer]
arr1 = [1,2,3]
main = print (sum (map (double . double) arr1))
