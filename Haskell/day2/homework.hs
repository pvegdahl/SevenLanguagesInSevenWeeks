module Main where
    everyThird x = x:(everyThird (x+3))

    everyFifth y = y:(everyFifth (y+5))

    everyEighth x y = zipWith (+) (everyThird x) (everyFifth y)

    stringToDouble string = read (filter (\x -> elem x "1234567890.") string) :: Double

    isPrime 1 = False
    isPrime n = all (\x -> (mod n x) /= 0) [2..(n-1)]

    primes = filter isPrime [2..]

    main :: IO ()
    main = return ()

