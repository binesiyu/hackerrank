hello_worlds n = sequence_ (take n (repeat (putStrLn "Hello World")))

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
   n <- readLn :: IO Int
   hello_worlds n
