import Data.Sequence
import Data.Foldable

main = do
  input <- getLine
  let n = read $ last $ words input :: Int
  array <- getLine
  let xs = map read $ words array :: [Int]
  printIntList $ arrayCounters xs $ Prelude.replicate n 0

arrayCounters :: [Int] -> [Int] -> [Int]
arrayCounters [] ns = ns
arrayCounters (x:xs) ns = arrayCounters xs $ toList $ update (x-1) (ns!!(x-1)+1) $ fromList ns

printIntList :: [Int] -> IO ()
printIntList [] = return ()
printIntList (x:xs) = do
  putStr $ show $ x
  putStr " "
  printIntList xs
