units, teens, tens :: [String]

units = ["zero","one","two","three","four","five","six","seven","eight","nine"]
teens = ["ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
tens = ["twenty","thirty","fourty","fifty","sixty","seventy","eighty","ninety"]

convert1 :: Int ->  String
convert1 n = units!!n

convert2 :: Int -> String 
convert2 n
  | t==0          = units!!u
  | t==1          = teens!!u
  | t>=2 && u==0  = tens!!(t - 2)
  | t>=2 && u/=0  = tens!!(t - 2) ++ "-" ++ units!!u
  where (t,u) = (div n 10, mod n 10)

convert3 :: Int -> String 
convert3 n
  | h==0          = convert2 t
  | t==0          = units!!h ++ " hundred"
  | t/=0          = units!!h ++ " hundred " ++ convert2 t
  where (h,t) = (div n 100, mod n 100)

convert6 :: Int -> String
convert6 n
  | t==0          = convert3 h
  | h==0          = convert3 t ++ " thousand"
  | h/=0          = convert3 t ++ " thousand" ++ link h ++ convert3 h
  where (t,h) = (div n 1000, mod n 1000)

link :: Int -> String
link n = if n < 100 then " and " else " "

main = print (convert6 301023)

