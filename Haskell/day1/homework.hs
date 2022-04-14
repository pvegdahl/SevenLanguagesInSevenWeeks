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

    nQueens :: (Integer) -> [Integer]
    nQueens n = nQueensRecursive([], n)

    nQueensRecursive :: ([Integer], Integer) -> [Integer]
    nQueensRecursive (board, n)
        | n == toInteger(length(board)) = board
        | otherwise = headOrEmptyList(filter (/=[]) [nQueensRecursive(board ++ [newPos], n) | newPos <- [0..n-1], checkNewQueen(board, newPos)])

    headOrEmptyList :: [[Integer]] -> [Integer]
    headOrEmptyList x = if x == [] then [] else head x

    checkNewQueen :: ([Integer], Integer) -> Bool
    checkNewQueen ([], n) = True
    checkNewQueen ((h:t), n) = (h /= n) && (toInteger(1 + length t) /= abs(h - n)) && checkNewQueen(t, n)

    main :: IO ()
    main = return ()
