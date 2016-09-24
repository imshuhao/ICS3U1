var n,r,sum : real
var c : array 0 .. 10 of real
var i : int

sum := 0

procedure wn
    put "Please input a positive integer number and not more than 10, and try again." 
end wn 

loop
    put "Please input the number of the classes(up to 10): " ..
    get n
    if n < 0 then
	wn
    elsif n > 10 then
	wn
    elsif (n mod 1) > 0 then
	wn
    elsif (n mod 1) = 0 then
	exit
    end if
end loop

i := ceil (n)

for counter : 1 .. i
put '(' , counter , " out of " , i , ')' , "Please input your mark: " ..
get c(i-1)
/*
get v
sum := sum + v
*/
end for

for counter : 1 .. i
    sum := sum + c(i-1)
end for

put "Your average mark is : ", sum/i

