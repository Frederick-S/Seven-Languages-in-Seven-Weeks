List myAverage := method(
    sum := 0

    self foreach(i, number, 
        if (number isKindOf(Number), sum = sum + number, Exception raise("Not a number"))
    )

    return sum / (self size)
)

list(1, 2, 3) myAverage println
list(1, "a", 3) myAverage println