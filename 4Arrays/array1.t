fcn findMax (var a : array 1 .. * of int) : int
    var N : int := upper (a)
    var maxm := -2147483647
    for i : 1 .. N
    if a(i)> maxm then
    maxm := a(i)
    end if
    end for
    result maxm
end findMax

var a : array 1 .. 10 of int := init(-1,-2,-3,10,-5,-6,-7,-8,-9,-1)
put findMax(a)
