proc clr % clear initial sudoku array data
    for a : 1 .. 9
	for b : 1 .. 9
	    S (a, b).N := 0
	    S (a, b).F := false
	end for
    end for
end clr

proc show % display sudoku data
    for decreasing h : 9 .. 1
	for v : 1 .. 9
	    put S (v, h).N, " " ..
	    if v = 9 then
		put ""
	    end if
	end for
    end for
end show

proc saveSudoku
    var temp := 0
    for decreasing h : 9 .. 1
	for v : 1 .. 9
	    if h = 1 then
		temp := 9
	    elsif h = 2 then
		temp := 8
	    elsif h = 3 then
		temp := 7
	    elsif h = 4 then
		temp := 6
	    elsif h = 5 then
		temp := 5
	    elsif h = 6 then
		temp := 4
	    elsif h = 7 then
		temp := 3
	    elsif h = 8 then
		temp := 2
	    elsif h = 9 then
		temp := 1
	    end if
	    sudoku (v, temp) := S (v, h).N
	end for
    end for
end saveSudoku

%checking
proc hor (IN : int, H : int)
    for r : 1 .. 9
	if S (r, H).N = IN then
	    spot := true
	end if
    end for
end hor

proc ver (IN : int, W : int)
    for r : 1 .. 9
	if S (W, r).N = IN then
	    spot := true
	end if
    end for
end ver

function rnd (mn, mx : int) : int
    result Rand.Int (mn, mx)
end rnd

proc chek
    for a : 1 .. 9
	for b : 1 .. 9
	    S (a, b).ch := false
	end for
    end for
end chek

%main
proc greeting
    cls
    Pic.ScreenLoad ("Images/s.bmp", 80, 500, picCopy)

    var today : string
    date (today)
    locate (10, 1)
    put "Greetings!!  The date today is: ", today

    locate (11, 1)
    put "                                                  1:easy 2:normal 3:hard"
    locate (12, 1)
    put "Please choose the difficulty by number(1~3):" ..
    get difficulty
    loop
	exit when difficulty >= 1 and difficulty <= 3
	locate (12, 1)
	put "ERROR! Please choose the difficulty between 1 and 3:                                        \b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b" ..
	get difficulty
    end loop
    cls
    Pic.ScreenLoad ("Images/s.bmp", 80, 500, picCopy)
    locate (10, 1)
    put "Your game difficulty: ", difficulty, "\n"
    put "Do you wish to see instructions?  (Y/N or y/n) " ..
    getch (YesToInstructions)

end greeting
