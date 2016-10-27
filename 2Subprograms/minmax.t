proc sort2 (x, y : int, var maxn, minn : int)
	maxn := x
	minn := y
    if x < y then
	maxn := y
	minn := x
    end if
end sort2

var a, b, m, n : int := 0

put "a:" ..
get a
put "b:" ..
get b
sort2 (a, b, m, n)
put "maxmun: ", m, "\nminimum: ", n
