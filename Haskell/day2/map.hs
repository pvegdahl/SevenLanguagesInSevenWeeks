module Main where
    squareAll :: [Integer] -> [Integer]
    squareAll list = map square list
        where square x = x*x

    main :: IO ()
    main = return ()

