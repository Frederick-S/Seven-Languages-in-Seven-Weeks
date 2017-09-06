originalDivision := Number getSlot("/")
Number / = method(divisor, if (divisor == 0, 0, self originalDivision(divisor)))
(6 / 2) println
(6 / 0) println