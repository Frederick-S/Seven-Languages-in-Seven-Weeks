TwoDimensionsList := List clone

TwoDimensionsList dim := method(x, y, 
    twoDimensionsList := TwoDimensionsList clone setSize(y) 
    twoDimensionsList foreach(i, _, twoDimensionsList atPut(i, TwoDimensionsList clone setSize(x))))

TwoDimensionsList set := method(x, y, value, at(y) atPut(x, value))
TwoDimensionsList get := method(x, y, at(y) at(x))

twoDimensionsList := TwoDimensionsList dim(3, 4)
twoDimensionsList println
twoDimensionsList set(1, 1, "hello")
twoDimensionsList get(1, 1) println
twoDimensionsList println