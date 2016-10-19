proc lineeqn (x1, y1, x2, y2 : int, var m, b : real)
    m := (y1 - y2) / (x1 - x2)
    b := y1 - m * x1
end lineeqn

var x1, x2, y1, y2 : int := 0
var m, b : real := 0.0

put "Please input x1 and y1: " ..
get x1, y1
put "Please input x2 and y2: " ..
get x2, y2
lineeqn (x1, y1, x2, y2, m, b)
put "Slope: ", m, "\nY-intercept: ", b
