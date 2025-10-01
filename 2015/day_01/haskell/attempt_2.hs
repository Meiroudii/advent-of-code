main :: IO ()
main = do
    s <- readFile "../input.txt"
    let floors = scanl step 0 s
        final  = last floors
        pos    = length (takeWhile (/= -1) floors)
    putStrLn $ "Part 1: Final floor = " ++ show final
    putStrLn $ "Part 2: First basement position = " ++ show pos

step :: Int -> Char -> Int
step lvl '(' = lvl + 1
step lvl ')' = lvl - 1
step lvl _   = lvl
