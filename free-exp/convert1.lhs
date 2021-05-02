> units :: [String]
> units = ["zero","one","two","three","four","five","six","seven","eight","nine"]

> convert1 :: Int -> String
> convert1 n = units!!n

> digits1 :: Int -> (Int,Int)
> digits1 n = (div n 10, mod n 10)

> convert2 :: Int -> String
> convert2 = combine2 . digits1

> combine2 :: (Int,Int) -> String
> combine2 (t,u)
>   | t==0    = units!!u

