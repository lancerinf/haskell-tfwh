import Data.Char

text = "Hey this IS my text"

lowerText = map toLower  text

wooords = words text

main = do
  print (words (map toLower text))
  print ((words . map toLower) text)
  print $ words . map toLower $ text
  print (map (map toLower) (words text))
  print $ (map (map toLower) . words) text
  print $ map (map toLower) . words $ text
