TwoDimensionsList := List clone

dim := method(x, y, 
    twoDimensionsList := TwoDimensionsList clone setSize(y) 
    twoDimensionsList foreach(i, _, twoDimensionsList atPut(i, TwoDimensionsList clone setSize(x))))

TwoDimensionsList set := method(x, y, value, at(y) atPut(x, value))
TwoDimensionsList get := method(x, y, at(y) at(x))

TwoDimensionsList transpose := method( 
    newTwoDimensionsList := dim(self size, self at(0) size)
    newTwoDimensionsList foreach(i, row, row foreach(j, column, newTwoDimensionsList set(j, i, self get(i, j))))
    newTwoDimensionsList)

twoDimensionsList := dim(3, 4)
twoDimensionsList println
twoDimensionsList set(1, 1, "hello")
twoDimensionsList get(1, 1) println
twoDimensionsList println

twoDimensionsList := dim(3, 2)
twoDimensionsList set(0, 0, 1)
twoDimensionsList set(1, 0, 2)
twoDimensionsList set(2, 0, 3)
twoDimensionsList set(0, 1, 4)
twoDimensionsList set(1, 1, 5)
twoDimensionsList set(2, 1, 6)
twoDimensionsList println

newTwoDimensionsList := twoDimensionsList transpose
newTwoDimensionsList println