module Main where

    size [] = 0
    size (head:tail) = 1 + size tail

    prod [] = 1
    prod (head:tail) = head * prod tail

    allEven :: [Integer] -> [Integer]
    allEven [] = []
    allEven (h:t) = if even h then h:allEven t else allEven t

    main :: IO ()
    main = return ()
