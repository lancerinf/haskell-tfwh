import Data.Char

units = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

song n = if n==0 then ""
         else song (n-1) ++ "\n" ++ verse n

verse n = capitalized (line1 n) ++ capitalized (line2 n) ++ capitalized (line3 n) ++ capitalized (line4 n) 

line1 n = units!!n ++ " " ++ singularplural n ++ " went to mow" ++ "\n"

singularplural :: Int -> String
singularplural n
  | n == 1      = "man"
  | otherwise   = "men"

line2 n = "went to mow a meadow" ++ "\n"

line3 n
  | n==1        = "one man and his dog" ++ "\n"
  | otherwise   = units!!n ++ " " ++ singularplural n ++ ", " ++ line3 (n-1)

line4 = line2

capitalized :: String -> String 
capitalized [] = []
capitalized (head:tail) = toUpper head : tail

main = putStrLn (song 4)