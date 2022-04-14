module Main where

    fib :: Integer -> Integer
    fib = fst . fibNthPair

    fibTuple :: (Integer, Integer, Integer) -> (Integer, Integer, Integer)
    fibTuple (x, y, 0) = (x, y, 0)
    fibTuple (x, y, index) = fibTuple(y, x+y, index-1)

    fibResult :: (Integer, Integer, Integer) -> Integer
    fibResult (x, _, _) = x

    fibNextPair :: (Integer, Integer) -> (Integer, Integer)
    fibNextPair (x, y) = (y, x+y)

    fibNthPair :: Integer -> (Integer, Integer)
    fibNthPair 1 = (1, 1)
    fibNthPair n = fibNextPair(fibNthPair(n-1))


    main :: IO ()
    main = return ()

