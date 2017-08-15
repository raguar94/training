main = do
  array <- getLine
  printList $ myReverse $ map myReverse $ words array

myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = last xs : myReverse (init xs) ++ [x]

printList :: [String] -> IO ()
printList [] = return ()
printList [x] = putStr x
printList (x:xs) = do
  putStr x
  putStr " "
  printList xs
