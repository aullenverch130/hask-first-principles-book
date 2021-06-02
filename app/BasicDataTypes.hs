module BasicDataTypes where

-- Exercises: Mood Swing pg.136
data Blah = True
data Woot = False

data Mood = Blah | Woot deriving Show


-- 1. Mood
-- 2. Blah, Woot
-- 3. that is assuming that the value of the function is Blah. What if the value is Woot? 
    -- In that case it should the type signature would be Mood -> Blah
-- 4. ?????
-- changeMood :: Mood -> Woot
-- -- changeMood Mood = Woot
-- changeMood _ = Blah
-- 5. ????

-- Exercises: Find the Mistakes pg.155
-- 1. not True && True => False
-- 2. not (x == 6) => False
-- 3. compiles
-- 4. ["Merry"] > ["Happy"] => True
-- 5. ['1', '2', '3'] ++ "look at me!"





-- Chapter Exercises 

-- Exercises 
awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]
-- 1. [a] -> Num, after checking REPL it is, a -> Int
-- 2.
    -- a) 5
    -- b) 3
    -- c) 2
    -- d) 5
-- 3. ???
-- 4. ???
-- 5. Bool, True
-- 6. Bool, False
-- 7. (works, True), (no, because lists must have elements of same type), (yes, 5), (works, False), (no, need Bool types for &&)
-- 8.
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x
-- 9.
myAbs :: Integer -> Integer
myAbs x = if x < 0
    then abs x
    else x
-- 10.
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f a b = ((snd a, snd b), (fst a, fst b))


-- Correcting syntax
-- 1. 
x = (+)
lenPlus :: String -> Int
lenPlus xs = x w 1
    where w = length xs
-- 2. 
    -- \x -> x
-- 3. 
myFst (a, b) = a
testF = myFst (7, 3)



-- Match the function names to their types
-- 1. a
-- 2. b
-- 3. a
-- 4. d
