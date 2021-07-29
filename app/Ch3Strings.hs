module Ch3Strings where


-- Exercises: Scope pg.109
-- 1. yes
-- 2. no
-- 3. no
-- 4. yes
area d = pi * (r * r)
    where r = d / 2

-- Exercises: Syntax Errors pg.114
-- 1. no, fix with (++) [1, 2, 3] [4, 5, 6]   
-- 2. no, fix with  "<3" ++ " Haskell"
-- 3. yes





-- Chapter Exercises

-- Reading syntax
-- 1. 
    -- a) yes
    -- b) no, (++) [1, 2, 3] [4, 5, 6]  
    -- c) yes
    -- d) no,  ["hello" ++ " world"]
    -- e) no, "hello" !! 4
    -- f) yes
    -- g) no, take 4 "lovely"
    -- h) yes
-- 2. 
    -- a) d
    -- b) c
    -- c) e
    -- d) a
    -- e) e      



-- Building functions
-- 1. 
    -- a)
curryAwe1 x = x ++ "!"
    -- b)
curryAwe2 x = "y"
    -- c)
curryAwe3 x = "awesome!"
-- 2. 
    -- same as 1.
-- 3.
thirdLetter :: String -> Char
thirdLetter x = (!!) x 2
-- 4.
letterIndex :: Int -> Char
letterIndex x = (!!) "Curry is awesome!" x
-- 5.
rvrs :: String -> String
rvrs x = awesome ++ " " ++ is ++ " " ++ curry
    where awesome = drop 9 x
          is = take 2 (drop 6 x)
          curry = take 5 x
-- 6.
-- module Reverse where
--     rvrs :: String -> String
--     rvrs x = awesome ++ " " ++ is ++ " " ++ curry
--         where awesome = drop 9 x
--               is = take 2 (drop 6 x)
--               curry = take 5 x

