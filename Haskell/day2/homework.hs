module Main where
    everyThird x = x:(everyThird (x+3))

    everyFifth y = y:(everyFifth (y+5))

    everyEighth x y = zipWith (+) (everyThird x) (everyFifth y)

    stringToDouble string = read (filter (\x -> elem x "1234567890.") string) :: Double

    isPrime 1 = False
    isPrime n = all (\x -> (mod n x) /= 0) [2..(n-1)]

    primesSlow = filter isPrime [2..]

    nextPrime :: [Integer] -> Integer
    nextPrime currentPrimes = head (filter isRelativePrime [((last currentPrimes)+2)..])
        where isRelativePrime n = all (\x -> (mod n x) /= 0) currentPrimes

    primeRecursion :: [Integer] -> [Integer]
    primeRecursion primesSoFar = (nextPrime primesSoFar):primeRecursion(primesSoFar ++ [(nextPrime primesSoFar)])

    primes = 2:3:(primeRecursion [2, 3])

    main :: IO ()
    main = return ()

