f :: Double -> Int -> Double
f 0 _ = 0
f a n = a^^n / (product (take n [1..])) -- Insert your code here --

solve :: Double -> Double
solve x = sum (take 10 (1:(map (f x ) [1..])))

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words
