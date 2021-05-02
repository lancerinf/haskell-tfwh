module T1 where

units :: [String]
units = ["zero","one","two","three","four","five","six","seven","eight","nine"]
teens = ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
tens = ["twenty","thirty","fourty","fifty","sixty","seventy","eighty","ninety"]

convert1 :: Int ->  String
convert1 n = units!!n

digits1 :: Int -> (Int,Int)
digits1 n = (div n 10, mod n 10)

convert2 :: Int -> String
convert2 = combine2 . digits1

combine2 :: (Int,Int) -> String
combine2 (t,u)
  | t==0          = units!!u
  | t==1          = teens!!u
  | t>1 && u==0   = tens!!(t-2)
  | t>1 && u>0    = tens!!(t-2) ++ "-" ++ units!!u
