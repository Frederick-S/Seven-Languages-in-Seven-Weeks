arraySum := method(twoDimensionsArray,
    sum := 0

    twoDimensionsArray foreach(i, array, 
        array foreach(j, n, sum = sum + n)
    )

    return sum
)
arraySum(list(list(1, 2, 3), list(4, 5, 6))) println