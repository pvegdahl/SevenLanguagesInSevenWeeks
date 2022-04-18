module Main where

    backwards :: [a] -> [a]
    backwards [] = []
    backwards (h:t) = (backwards t) ++ [h]

    main :: IO ()
    main = return ()

