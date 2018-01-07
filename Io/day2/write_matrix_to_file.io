writeToFile := method(fileName, matrix,
    content := matrix map(row, row join(" ")) join("\n")

    file := File with(fileName)
    file remove
    file openForUpdating
    file write(content)
    file close
)

readFromFile := method(fileName,
    matrix = List clone
    file := File with(fileName)
    lines := file readLines
    lines foreach(_, line,
        row := List clone
        line split(" ") foreach(_, column, row append(column))
        matrix append(row)
    )
    file close

    matrix
)

fileName := "matrix.txt"
matrix := list(list(1, 2, 3), list(4, 5, 6), list(7, 8, 9))
matrix println

writeToFile(fileName, matrix)

matrix2 := readFromFile(fileName)
matrix2 println
