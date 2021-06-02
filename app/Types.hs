module Types where


-- Exercises: Type Matching pg.191
-- 1.
    -- a) c
    -- b) d
    -- c) b 
    -- d) a 
    -- e) e
-- 2. same as 1.

-- Exercises: Type Arguments pg.204
-- 1. a
f :: a -> a -> a -> a; f = undefined
x  :: Char; x = undefined
    -- t f x   =>   f x :: Char -> Char -> Char
-- 2. d
g :: a -> b -> c -> b; g = undefined
    -- :t g 0 'c' "woot"   =>    g 0 'c' "woot" :: Char
-- 3. d
h :: (Num a, Num b) => a -> b -> b; h = undefined
    -- :t h 1.0 2    =>   h 1.0 2 :: Num b => b
-- 4. c 
h2 :: (Num a, Num b) => a -> b -> b; h2 = undefined
    -- :t h2 1 (5.5 :: Double)    =>     h2 1 (5.5 :: Double) :: Double
-- 5. a
jackal :: (Ord a, Eq b) => a -> b -> a; jackal = undefined
    -- :t jackal "keyboard" "has the word jackal in it"   =>     jackal "keyboard" "has the word jackal in it" :: [Char]
-- 6. e
jackal2 :: (Ord a, Eq b) => a -> b -> a; jackal2 = undefined
    -- :t jackal2 "keyboard"    =>     jackal2 "keyboard" :: Eq b => b -> [Char]
-- 7. d
kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
    -- :t kessel 1 2      =>       kessel 1 2 :: (Ord a, Num a) => a
-- 8. a
kessel2 :: (Ord a, Num b) => a -> b -> a; kessel2 = undefined
    -- :t kessel2 1 (2 :: Integer)      =>       kessel2 1 (2 :: Integer) :: (Ord a, Num a) => a
-- 9. c
    -- :t kessel2 (1 :: Integer) 2   =>     kessel2 (1 :: Integer) 2 :: Integer




-- Exercises: Parametricity pg.213
-- 1. I tried with no avail
-- 2. two
para1 :: a -> a -> a; para1 = undefined
para2 :: (a -> a) -> a; para2 = undefined
-- 3. two, no
para3 :: a -> b -> b; para3 = undefined
-- para4 a b = \ a b -> b ??? how do you "implement"


-- Exercises: Apply Yourself pg.220
-- 1. changes to [Char] -> [Char]
-- 2. changes to Fractional a => a -> a
-- 3. changes to Int -> [Char]
-- 4. changes to Int -> Bool
-- 5. changes to Char -> Bool










-- Chapter Exercises

-- Multiple choice
-- 1. c
-- 2. a
-- 3. b 
-- 4. c


-- Determine the type
-- 1.
    -- a) 54, Num a => a
    -- b) (0,"doge"),   Num a => (a, [Char])
    -- c) (0,"doge"),      (Integer, [Char])
    -- d) False, Bool
    -- e) 5,  Int
    -- f) False, Bool
-- 2. 100,  Num a => a
-- 3. z 40 => 400,   Num a => a
-- 4. 0.4,  Fractional a => a
-- 5. "Julie <3 Haskell",    [Char]


-- Does it compile?
-- 1. wahoo = bigNum $ 10, is trying to compose expressions.. 
    -- adding any Num operator befor bigNum works
-- 2. everything seems to work
-- 3. c & d are trying to apply a functions, b & c respectively, 
    -- that doesn't except an argument.
-- 4. c is not declared, 


-- Type variable or specific type constructor?
-- 1. ok
-- 2. fully polymorphic [0], concrete [1] & [2] 
-- 3. constraint Enum [0], fully polymorphic [1], constraint Enum [2], concrete C
-- 4. fully polymorphic [0], fully polymorphic [1], conrete C


-- Write a type signature
-- 1. 
functionH :: [x] -> x; functionH = undefined
-- 2.
functionC :: x -> y -> Bool; functionC = undefined
-- 3.
functionS :: (x, y) -> y; functionS = undefined
 


-- Given a type, write the function
-- 1. 
i :: a -> a
i a = a
-- 2.
c :: a -> b -> a
c a b = a
-- 3. yep!
c'' :: b -> a -> b
c'' b a = b
-- 4.
c' :: a -> b -> b
c' a b = b
-- 5. ?????
r :: [a] -> [a]
r = undefined
-- 6. ????
co :: (b -> c) -> (a -> b) -> a -> c; co = undefined
-- co bToC aTob a = undefined
-- 7.
a :: (a -> c) -> a -> a
a aToC x = x 
-- 8. ?????
a' :: (a -> b) -> a -> b
a' aToB a = aToB a


-- Fix it
-- 1.
fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain!"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing = if length x > length y then fstString x else sndString y 
    where x = "Singin'"
          y = "Somewhere"
-- 2.
sing2 = if length x > length y then fstString x else sndString y 
    where x = "Singin' la la la la"
          y = "Somewhere"
-- 3.
main :: IO ()
main = do
    print (1 + 2)
    putStrLn "10"
    print (negate (-1))
    print ((+) 0 blah)
        where blah = negate (-1) 


-- Type-Kwon-Do
-- 1. h = g $ f
f' :: Int -> String; f' = undefined
g' :: String -> Char; g' = undefined
h' :: Int -> Char 
h' b = g' (f' b)
-- 2.
data A; data B; data C
q :: A -> B; q = undefined
w :: B -> C; w = undefined

e :: A -> C
e x = w (q x)
-- 3.
data X; data Y; data Z

xz :: X -> Z; xz = undefined
yz :: Y -> Z; yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (a, b) = (xz a, yz b) 
-- 4. ??? 
munge :: (x -> y)
    -> (y -> (w, z))
    -> x
    -> w
-- munge a b c = ??????
munge = undefined

