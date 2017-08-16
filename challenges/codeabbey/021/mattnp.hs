import Data.Sequence
import Data.Foldable

main = do
  input <- getLine
  let n = read $ last $ words input :: Int
  array <- getLine
  let xs = map read $ words array :: [Int]
  printIntList $ arrayCounters xs $ Prelude.replicate n 0

arrayCounters :: [Int] -> [Int] -> [Int]
arrayCounters xs ns
    = foldl
        (\ ns x ->
           toList $ update (x - 1) (ns !! (x - 1) + 1) $ fromList ns)
        ns
        xs

printIntList :: [Int] -> IO ()
printIntList [] = return ()
printIntList (x:xs) = do
  putStr $ show x
  putStr " "
  printIntList xs
