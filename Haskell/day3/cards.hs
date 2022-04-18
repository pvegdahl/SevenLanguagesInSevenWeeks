module Main where
    data Suit = Clubs | Diamonds | Hearts | Spades deriving (Show)
    data Rank = Nine | Ten | Jack | Queen | King | Ace deriving (Show)
    type Card = (Rank, Suit)
    type Hand = [Card]

    value :: Rank -> Integer
    value Nine = 9
    value Ten = 10
    value Jack = 11
    value Queen = 12
    value King = 13
    value Ace = 14

    cardValue :: Card -> Integer
    cardValue (rank, suit) = value rank

    main :: IO ()
    main = return ()

