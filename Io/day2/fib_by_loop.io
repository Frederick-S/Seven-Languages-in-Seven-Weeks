fib := method(n,
    prev := 0
    current := 1

    for (i, 1, n,
        if (i > 1) then (
            temp := current
            current = current + prev
            prev = temp
        )
    )

    return current
)
fib(8) println