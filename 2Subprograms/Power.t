function power(b,p : int) : int
    var r : int := b
    for c : 2 .. p
	r *= b
    end for
    result r
end power

put power(5,2)
