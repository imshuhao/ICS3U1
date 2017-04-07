include "lib.t"

%var a : array 1 .. 7 of int := init (-12580, -98425, -63768, -72397, -75824, -53573, -63835)
var c := 1
var ifsame := false

var a : array 1 .. 7 of int := init (7, 6, 5, 4, 3, 2, 1)

/*
 loop
 ifsame := false
 put "please input the number: " ..
 get a (c)
 for j : 1 .. (c - 1)
 if a (c) = a (j) then
 ifsame := true
 put "The number should be unique. Please try again."
 end if
 end for
 if ifsame = false then
 c += 1
 end if
 exit when c > 7
 end loop
 */

var minN := -99999
var minI := 0
var pmin := -99999
for i : 1 .. 7
    minN := a (i)
    for j : 1 .. 7
	if a(j) < minN and a(j) > pmin then
	minN := a(j)
	pmin := a(j)
	end if
    end for
    put minN
end for
