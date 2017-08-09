main = do
    input <- getContents
    let (count:xs) = map read (words input) :: [Integer]
    let ys = map wsd xs
    printList ys

printList :: [String] -> IO ()
printList [] = return ()
printList [x] = putStr x
printList (x:xs) = do
  putStr x
  putStr " "
  printList xs

wsd :: Integer -> String
wsd x = show $ wsdD x (digitCount x)

wsdD :: (Integral a) => a -> a -> a
wsdD n d
   | n < 10 = n
   | otherwise = rem n 10 * d + wsdD (div n 10) (d-1)

digitCount :: Integer -> Integer
digitCount n
   | n < 10 = 1
   | otherwise = 1 + digitCount (div n 10)
