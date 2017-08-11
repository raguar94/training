main = do
  n <- getLine
  array <- getLine
  let xs = map read (words array) :: [Integer]
  print (arrayCheckSum xs)

arrayCheckSum :: [Integer] -> Integer
arrayCheckSum [] = 0
arrayCheckSum [x] = mod (x * 113) 10000007
arrayCheckSum (x:xs) = arrayCheckSum $ head xs + mod (x * 113) 10000007 : tail xs
