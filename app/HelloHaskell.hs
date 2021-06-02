module HelloHaskell where


-- Exercises: Comprehension Check pg.50
-- 1. don't change them
-- 2. piSquare x = 3.14 * (x * x)
-- ?? 3. piSquare x = pi * (x * x)

-- Exercises: Parentheses and Association pg.56
-- 1. yes
-- 2. no
-- 3. yes

-- Exercises: Heal the Sick pg.67
-- 1. area x = 3.14 * (x * x)
-- 2. double x = x * 2
-- 3. 
x = 7
y = 10
f = x + y

-- Exercises: A Head Code pg.88
-- 1. 5 
-- 2. 25
-- 3. 30
-- 4. 6
--
mult1 = x * y
    where x = 5; y = 6
-- 1.
threeThous = x * 3 * y
    where x = 3
          y = 1000
-- 2. 
ten5 = x * 5
    where y = 10;
          x = 10 * 5 + y
-- 3.
zDivxy = z / x + y
    where x = 7
          y = negate x
          z = y * 10




-- Chapter Exercises

-- Parenthesization
-- 1. 2 + 2 * 3 - 1 == 2 + (2 * 3) - 1
-- 2. (^) 10 $ 1 + 1 == (^) 10 $ (1 + 1)
-- 3. 2 ^ 2 * 4 ^ 5 + 1 == (2 ^ 2) * (4 ^ 5) + 1


-- Equivalent expressions
-- 1. 1 + 1 == 2
-- 2. 10 ^ 2 == 10 + 9 * 10
-- 3. 400 - 37 != (-) 37 400
-- 4. 100 `div` 3 != 100 / 3
-- 5. 2 * 5 + 18 != 2 * (5 + 18)


-- More fun with functions
-- 1. 
    -- 10 + waxOn => 1135
    -- (+10) waxOn => 1135
    -- (-) 15 waxOn => -1110
    -- (-) waxOn 15 => 1110
-- 2. 
    -- triple waxOn => 3375
-- 3. 
    -- triple waxOn => 3375
-- 4.
waxOn = x * 5
    where z = 7; 
          y = z + 8; 
          x = y ^ 2;
-- 5.
triple x = x * 3 -- same, 3375
-- 6.
waxOff x = triple x
-- 7.
    -- waxOff waxOn => 3375

