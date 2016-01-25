f :: Int -> [Int] -> [Int]
f n [] = []--Fill up this function
f n (x:xs) =
        if n <= x then reset
                  else x : reset
    where reset = f n xs

-- The Input/Output section. You do not need to change or modify this part
main = do
    n <- readLn :: IO Int
    inputdata <- getContents
    let
        numbers = map read (lines inputdata) :: [Int]
    putStrLn . unlines $ (map show . f n) numbers
