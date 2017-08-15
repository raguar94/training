main = do
  n <- readLn :: IO Int
  readRandoms n

readRandoms :: Int -> IO ()
readRandoms 0 = return ()
readRandoms n = do
  random <- readLn :: IO Float
  putStr $ show $ diceRolling random
  putStr " "
  readRandoms (n-1)

diceRolling :: Float -> Int
diceRolling x = floor (x*6) + 1
