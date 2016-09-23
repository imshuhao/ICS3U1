% initialization for the resolution
setscreen ("graphics:640;480,nocursor")

% Declare and instantiate needed variables
const Radius : int := 25
var CentreX, CentreY, direction, tc, bsc : int

CentreX := Rand.Int (8 + Radius + 1, maxx - 8 - Radius - 1) % randomly generate the X-axis
CentreY := Rand.Int (33 + Radius + 1, maxy - 33 - Radius - 1) % randomly generate the Y-axis
direction := 1 % value 1 stands for right, 2 stands for up, 3 stands for left, 4 stands for down
tc := 0 % Touch Counter
bsc := 0 % Back Step Counter

Draw.Box (8, 24, maxx - 8, maxy - 33, red) % draw the box for the circle

procedure putdata % update the data of PixelX, PixelY, Back Step Counter and Touch Counter
    locate (1, 5) put "PixelX = ", CentreX
    locate (1, 20) put "PixelY = ", CentreY
    locate (1, 35) put "Back Step Counter = ", bsc
    locate (1, 60) put "Touch Counter = ", tc
end putdata

procedure drawcircle % draw the circle, daley for displaying, and then erase it
    Draw.FillOval (CentreX, CentreY, Radius, Radius, blue)
    delay (100)
    Draw.FillOval (CentreX, CentreY, Radius, Radius, colorbg)
end drawcircle

procedure aftertouch % count for Touch Counter, take the circle 5 steps back, and randomly generate the next direction
    tc += 1
    drawcircle
    for counter : 1 .. 5
	exit when hasch
	putdata
	if direction = 1 then CentreX -= 10
	elsif direction = 2 then CentreY -= 10
	elsif direction = 3 then CentreX += 10
	elsif direction = 4 then CentreY += 10
	end if
	drawcircle
	bsc += 1
    end for
    direction := Rand.Int (1, 4)
end aftertouch

loop
    exit when hasch
    putdata
    drawcircle
    if direction = 1 then % determine the direction
	if CentreX + 10 < maxx - 8 - Radius - 1 then CentreX += 10 % move when the circle will not touch the side
	else
	    CentreX := maxx - 8 - Radius - 1
	    aftertouch
	end if
    elsif direction = 2 then % determine the direction
	if CentreY + 10 < maxy - 33 - Radius - 1 then CentreY += 10 % move when the circle will not touch the side
	else
	    CentreY := maxy - 33 - Radius - 1
	    aftertouch
	end if
    elsif direction = 3 then % determine the direction
	if CentreX - 10 > 8 + Radius + 1 then CentreX -= 10 % move when the circle will not touch the side
	else
	    CentreX := 8 + Radius + 1
	    aftertouch
	end if
    elsif direction = 4 then % determine the direction
	if CentreY - 10 > 24 + Radius + 1 then CentreY -= 10 % move when the circle will not touch the side
	else
	    CentreY := 24 + Radius + 1
	    aftertouch
	end if
    end if
end loop

Draw.FillOval (CentreX, CentreY, Radius, Radius, blue)
locate (maxrow div 2, maxcol div 2) put "End of Program" ..
