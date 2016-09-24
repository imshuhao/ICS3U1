var n1,n2,n3,n4,sum,tmp : int := 0
put "Please input your number:" ..
get n1, n2, n3, n4

for counter1 : 1 .. 4
    for counter2 : 1 .. 4
        for counter3 : 1 .. 4
            for counter4 : 1 .. 4
                if ccounter1 = 1 then
                    sum += n1+n2
                elsif counter1 = 2 then
                    sum += n1-n2
                elsif counter1 = 3 then
                    sum += n1 * n2
            end for
        end for
    end for
end for