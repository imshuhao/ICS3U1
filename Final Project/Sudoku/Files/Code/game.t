proc getdata
    clr
    saveSudoku
    %checking
    chek

    %plotting
    var x : int
    var y : int
    var c, f : int := 0
    var imbl : boolean
    var l : int := 0

    loop
	l += 1
	clr
	f := 0
	for M : 1 .. 9

	    %fam1
	    chek
	    c := 0
	    loop
		x := rnd (1, 3)
		y := rnd (7, 9)
		if S (x, y).ch = false then
		    S (x, y).ch := true
		    c := c + 1

		    if S (x, y).F = false then
			spot := false
			hor (M, y)
			ver (M, x)
			if spot = false then
			    S (x, y).N := M
			    S (x, y).F := true
			    f := f + 1
			    exit
			end if
		    end if
		end if
		if c = 9 then
		    exit
		end if
	    end loop

	    %fam2
	    chek
	    c := 0
	    loop
		x := rnd (4, 6)
		y := rnd (7, 9)
		if S (x, y).ch = false then
		    S (x, y).ch := true
		    c := c + 1

		    if S (x, y).F = false then
			spot := false
			hor (M, y)
			ver (M, x)
			if spot = false then
			    S (x, y).N := M
			    S (x, y).F := true
			    f := f + 1
			    exit
			end if
		    end if
		end if
		if c = 9 then
		    exit
		end if
	    end loop

	    %fam3
	    chek
	    c := 0
	    loop
		x := rnd (7, 9)
		y := rnd (7, 9)
		if S (x, y).ch = false then
		    S (x, y).ch := true
		    c := c + 1

		    if S (x, y).F = false then
			spot := false
			hor (M, y)
			ver (M, x)
			if spot = false then
			    S (x, y).N := M
			    S (x, y).F := true
			    f := f + 1
			    exit
			end if
		    end if
		end if
		if c = 9 then
		    exit
		end if
	    end loop

	    %fam4
	    chek
	    c := 0
	    loop
		x := rnd (1, 3)
		y := rnd (4, 6)
		if S (x, y).ch = false then
		    S (x, y).ch := true
		    c := c + 1

		    if S (x, y).F = false then
			spot := false
			hor (M, y)
			ver (M, x)
			if spot = false then
			    S (x, y).N := M
			    S (x, y).F := true
			    f := f + 1
			    exit
			end if
		    end if
		end if
		if c = 9 then
		    exit
		end if
	    end loop

	    %fam5
	    chek
	    c := 0
	    loop
		x := rnd (4, 6)
		y := rnd (4, 6)
		if S (x, y).ch = false then
		    S (x, y).ch := true
		    c := c + 1

		    if S (x, y).F = false then
			spot := false
			hor (M, y)
			ver (M, x)
			if spot = false then
			    S (x, y).N := M
			    S (x, y).F := true
			    f := f + 1
			    exit
			end if
		    end if
		end if
		if c = 9 then
		    exit
		end if
	    end loop

	    %fam6
	    chek
	    c := 0
	    loop
		x := rnd (7, 9)
		y := rnd (4, 6)
		if S (x, y).ch = false then
		    S (x, y).ch := true
		    c := c + 1

		    if S (x, y).F = false then
			spot := false
			hor (M, y)
			ver (M, x)
			if spot = false then
			    S (x, y).N := M
			    S (x, y).F := true
			    f := f + 1
			    exit
			end if
		    end if
		end if
		if c = 9 then
		    exit
		end if
	    end loop

	    %fam7
	    chek
	    c := 0
	    loop
		x := rnd (1, 3)
		y := rnd (1, 3)
		if S (x, y).ch = false then
		    S (x, y).ch := true
		    c := c + 1

		    if S (x, y).F = false then
			spot := false
			hor (M, y)
			ver (M, x)
			if spot = false then
			    S (x, y).N := M
			    S (x, y).F := true
			    f := f + 1
			    exit
			end if
		    end if
		end if
		if c = 9 then
		    exit
		end if
	    end loop

	    %fam8
	    chek
	    c := 0
	    loop
		x := rnd (4, 6)
		y := rnd (1, 3)
		if S (x, y).ch = false then
		    S (x, y).ch := true
		    c := c + 1

		    if S (x, y).F = false then
			spot := false
			hor (M, y)
			ver (M, x)
			if spot = false then
			    S (x, y).N := M
			    S (x, y).F := true
			    f := f + 1
			    exit
			end if
		    end if
		end if
		if c = 9 then
		    exit
		end if
	    end loop

	    %fam9
	    chek
	    c := 0
	    loop
		x := rnd (7, 9)
		y := rnd (1, 3)
		if S (x, y).ch = false then
		    S (x, y).ch := true
		    c := c + 1

		    if S (x, y).F = false then
			spot := false
			hor (M, y)
			ver (M, x)
			if spot = false then
			    S (x, y).N := M
			    S (x, y).F := true
			    f := f + 1
			    exit
			end if
		    end if
		end if
		if c = 9 then
		    exit
		end if
	    end loop

	end for

	if f = 81 then
	    exit
	end if

    end loop
    saveSudoku
end getdata

proc generateuserdata
    for i : 1 .. 9
	for j : 1 .. 9
	    userdata (i, j) := 0
	end for
    end for
    for i : 1 .. 9
	for j : 1 .. 9
	    var temp := rnd (1, difficulty + 1)
	    if temp = 1 then
		userdata (i, j) := sudoku (i, j)
	    end if
	end for
    end for
end generateuserdata


proc drawdata
    locate (10, 1)
    var x := 5
    var y := 40
    for i : 1 .. 9
	for j : 1 .. 9
	    Draw.Box (x + (50 * j) - 50, y + (50 * i) - 50, x + (50 * j), y + (50 * i), black)
	    var temp := rnd (1, difficulty + 1)
	    if userdata (i, j) not= 0 then
		locatexy (x + (50 * j) - 28, y + (50 * i) - 25)
		put userdata (i, j) ..
	    else
		locatexy (x + (50 * j) - 28, y + (50 * i) - 25)
		put ' ' ..
	    end if
	end for
    end for
    for i : 1 .. 3
	for j : 1 .. 3
	    Draw.Box (x - 1 + (150 * j) - 150, y - 1 + (150 * i) - 150, x - 1 + (150 * j), y - 1 + (150 * i), black)
	end for
    end for
    Draw.Box (maxx - 150, 250, maxx - 20, 300, black)
    locatexy (maxx - 140, 272)
    put "Generate Again" ..

    Draw.Box (maxx - 150, 150, maxx - 20, 200, black)
    locatexy (maxx - 120, 175)
    put "Show Answer" ..

    Draw.Box (maxx - 150, 50, maxx - 20, 100, black)
    locatexy (maxx - 100, 72)
    put "Exit" ..

    locate (1, 1)
end drawdata

proc showresult
    locate (10, 1)
    var x := 5
    var y := 40
    for i : 1 .. 9
	for j : 1 .. 9
	    Draw.Box (x + (50 * j) - 50, y + (50 * i) - 50, x + (50 * j), y + (50 * i), black)
	    var temp := rnd (1, difficulty + 1)
	    locatexy (x + (50 * j) - 28, y + (50 * i) - 25)
	    put sudoku (i, j) ..
	end for
    end for
    locate (1, 1)
end showresult

fcn checkans (i, j, ans : int) : boolean
    var re := true
    for ii : 1 .. 9
	if userdata (ii, j) = ans then
	    re := false
	end if
    end for
    for jj : 1 .. 9
	if userdata (i, jj) = ans then
	    re := false
	end if
    end for
    if i >= 1 and i <= 3 then
	if j >= 1 and j <= 3 then

	    for ii : 1 .. 3
		for jj : 1 .. 3

		    if userdata (ii, jj) = ans then
			re := false
		    end if

		end for
	    end for

	elsif j >= 4 and j <= 6 then

	    for ii : 1 .. 3
		for jj : 4 .. 6

		    if userdata (ii, jj) = ans then
			re := false
		    end if

		end for
	    end for

	elsif j >= 7 and j <= 9 then
	    for ii : 1 .. 3
		for jj : 7 .. 9

		    if userdata (ii, jj) = ans then
			re := false
		    end if

		end for
	    end for
	end if

    elsif i >= 4 and i <= 6 then

	if j >= 1 and j <= 3 then
	    for ii : 4 .. 6
		for jj : 1 .. 3

		    if userdata (ii, jj) = ans then
			re := false
		    end if

		end for
	    end for
	elsif j >= 4 and j <= 6 then

	    for ii : 4 .. 6
		for jj : 4 .. 6

		    if userdata (ii, jj) = ans then
			re := false
		    end if

		end for
	    end for

	elsif j >= 7 and j <= 9 then
	    for ii : 4 .. 6
		for jj : 7 .. 9

		    if userdata (ii, jj) = ans then
			re := false
		    end if

		end for
	    end for
	end if

    elsif i >= 7 and i <= 9 then

	if j >= 1 and j <= 3 then
	    for ii : 7 .. 9
		for jj : 1 .. 3

		    if userdata (ii, jj) = ans then
			re := false
		    end if

		end for
	    end for
	elsif j >= 4 and j <= 6 then

	    for ii : 7 .. 9
		for jj : 4 .. 6

		    if userdata (ii, jj) = ans then
			re := false
		    end if

		end for
	    end for

	elsif j >= 7 and j <= 9 then
	    for ii : 7 .. 9
		for jj : 7 .. 9

		    if userdata (ii, jj) = ans then
			re := false
		    end if

		end for
	    end for
	end if

    end if
    result re
end checkans

proc askans (i, j : int)
    var ans := 0
    locatexy (1, 3)
    put "Please inpput your answer(1~9):                                        \b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b" ..
    get ans
    loop
	exit when ans >= 1 and ans <= 9
	cls
	Pic.ScreenLoad ("Images/s.bmp", 80, 500, picCopy)
	drawdata
	locatexy (1, 3)
	put "ERROR! Please choose the answer between 1 and 9:                                        \b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b" ..
	get ans
    end loop
    if checkans (i, j, ans) = false then
	cls
	Pic.ScreenLoad ("Images/s.bmp", 80, 500, picCopy)
	drawdata
	locatexy (1, 3)
	put "ERROR! Number ", ans, " is not allowed(Repeated).                                        \b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b" ..
	askans (i, j)
    else
	userdata (i, j) := ans
    end if

    cls
    Pic.ScreenLoad ("Images/s.bmp", 80, 500, picCopy)
    drawdata
end askans

proc playgame
    cls
    Pic.ScreenLoad ("Images/s.bmp", 80, 500, picCopy)
    locate (10, 1)
    put "Your game difficulty: ", difficulty, "\n"
    put "Generating Game Data..." ..
    getdata
    generateuserdata
    put "done"
    delay (800)
    cls
    Pic.ScreenLoad ("Images/s.bmp", 80, 500, picCopy)
    drawdata
    var x := 5
    var y := 40
    var mx, my, button : int
    var ifdone : boolean
    loop
	sysclock (t)
	locatexy (1, 3)
	put "Time Used: ", round (t / 1000), "s" ..
	locatexy (maxx - 400, 3)
	put "    Time Left: ", 1800 - (round (t / 1000)), "s" ..
	if round (t / 1000) > 1800 then
	    locatexy (maxx - 150, 450)
	    put "YOU LOSE!"
	    locatexy (maxx - 150, 350)
	    put "Finish Game?(y/n)" ..
	    var key : string (1)
	    getch (key)
	    if key = "Y" or key = "y" then
		exit
	    end if
	end if

	Mouse.Where (mx, my, button)
	ifdone := true
	for i : 1 .. 9
	    for j : 1 .. 9
		if userdata (i, j) not= sudoku (i, j) then
		    ifdone := false
		end if
	    end for
	end for
	if ifdone then
	    locatexy (maxx - 150, 450)
	    put "YOU WIN!"
	    locatexy (maxx - 150, 350)
	    put "Finish Game?(y/n)" ..
	    var key : string (1)
	    getch (key)
	    if key = "Y" or key = "y" then
		exit
	    end if
	end if

	if button = 1 then
	    if mx > maxx - 150 and mx < maxx - 20 and my > 50 and my < 100 then
		exit
	    elsif mx > maxx - 150 and mx < maxx - 20 and my > 150 and my < 200 then
		showresult
	    elsif mx > maxx - 150 and mx < maxx - 20 and my > 250 and my < 300 then
		playgame
	    end if
	end if

	for i : 1 .. 9
	    for j : 1 .. 9
		if button = 1 then
		    if mx > x + (50 * j) - 50 and mx < x + (50 * j) and my > y + (50 * i) - 50 and my < y + (50 * i) then
			if userdata (i, j) = 0 then
			    askans (i, j)
			end if
		    end if
		end if
	    end for
	end for
    end loop
end playgame
