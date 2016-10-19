proc intdiv (a,b:int, var q,r : int)
    q := a div b
    r := a-q*b
end intdiv

var m,n,q,r : int := 0
put "What is the # being divided?"
get m
put "What is the # being divided by?"
get n
intdiv(m,n,q,r)
put "The quotient is: ", q, "\nThe remainder is: ", r
