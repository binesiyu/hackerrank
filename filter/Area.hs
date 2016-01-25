import           Text.Printf (printf)

f z (x,y) = x * (z^y)

sumf a b z = sum  (map (fromIntegral . f z) (zip a b))
-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = map (sumf a b) [ld,step..lr]
    where ld = fromIntegral l
          lr = fromIntegral r
          step = ld + 0.01
--solve l r a b = map (\z->sum ( map (f z) (zip a b))) [l,r]--Complete this function--

--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines
