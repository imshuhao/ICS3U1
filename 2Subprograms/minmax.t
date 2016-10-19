proc sort2 (x, y : int, var maxn, minn : int)
    if x > y then
	maxn := x
	minn := y
    elsif x < y then
	maxn := y
	minn := x
    else
	maxn := x
	minn := y
    end if
end sort2

var a, b, m, n : int := 0

put "a:" ..
get a
put "b:" ..
get b
sort2 (a, b, m, n)
put "maxmun: ", m, "\nminimum: ", n
