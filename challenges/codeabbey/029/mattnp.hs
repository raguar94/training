import Data.List (sortBy, elemIndex)
import Data.Function (on)

main :: IO ()
main = do
  n <- getLine
  input <- getLine
  let xs = map read $ words input :: [Int]
  printIntList $ map fst $ sortBy (compare `on` snd) (zip [1..] xs)

printIntList :: [Int] -> IO ()
printIntList [] = return ()
printIntList (x:xs) = do
  putStr $ show x
  putStr " "
  printIntList xs
