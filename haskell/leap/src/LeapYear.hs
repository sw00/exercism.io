module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year 
  | divisibleBy4 && not divisibleBy100 = True
  | divisibleBy100 && divisibleBy400 = True
  | otherwise = False
  where (divisibleBy4, divisibleBy100, divisibleBy400) = (year `mod` 4 == 0 ,year `mod` 100 == 0 ,year `mod` 400 == 0)
