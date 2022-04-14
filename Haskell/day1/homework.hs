module Main where

    reverseList :: [Integer] -> [Integer]
    reverseList [] = []
    reverseList (h:t) = reverseList t ++ [h]

    combinations :: [String] -> [(String, String)]
    combinations x = [(a, b) | a <- x, b <- x, a < b]

    sort :: [Integer] -> [Integer]
    sort [] = []
    sort [x] = [x]
    sort (h:t) = sort([a | a <- t, a < h]) ++ [h] ++ [b | b <- t, b == h] ++ sort([c | c <- t, c > h])

    timesTables :: (Integer) -> [(Integer, Integer, Integer)]
    timesTables n = [(a, b, a*b) | a <- [0..n], b <- [0..n]]
    -- different

    main :: IO ()
    main = return ()
