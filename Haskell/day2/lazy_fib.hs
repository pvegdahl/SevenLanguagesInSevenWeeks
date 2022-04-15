module Main where
    lazyFib x y = x:(lazyFib y (x+y))

    fib = lazyFib 1 1

    fibNth n = (head . (drop (n - 1))) fib

    main :: IO ()
    main = return ()

