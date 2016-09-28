setscreen ("graphics:640;480")
proc draw (ipCentreX, ipCentreY, iRadius, iColour : int)


    % Round face
    Draw.Oval (ipCentreX, ipCentreY, iRadius, iRadius, iColour)

    % Left eye
    Draw.Oval (ipCentreX - iRadius div 3, ipCentreY + iRadius div 3, iRadius div 6, iRadius div 6, iColour)

    % Right eye
    Draw.Oval (ipCentreX + iRadius div 3, ipCentreY + iRadius div 3, iRadius div 6, iRadius div 6, iColour)

    % Mouth 
    Draw.Arc (ipCentreX, ipCentreY, (iRadius * 3) div 4, (iRadius * 3) div 4, 180, 360, iColour)


end draw

proc erase (ipCentreX, ipCentreY, iRadius : int)
    draw (ipCentreX, ipCentreY, iRadius, white)
end erase

proc slide (iCentreX, iCentreY, iRadius, iColour, iDirection, iNumOfSteps, iLengthOfSteps, iDelay : int)
    var x,y,l : int := 0
    x := iCentreX
    y := iCentreY
    l := iLengthOfSteps
    for counter : 1 .. iNumOfSteps
	draw (x, y, iRadius, iColour)
	delay (iDelay)
	draw (x, y, iRadius, colorbg)
	if iDirection = 1 then
	    x += l
	elsif iDirection = 2 then
	    y += l
	elsif iDirection = 3 then
	    x -= l
	elsif iDirection = 4 then
	    y -= l
	end if
    end for
    draw (x, y, iRadius, iColour)
end slide


var sx,sy,r,c,d,s,l,de : int := 0

put "Please enter the starting x coordinate: " ..
get sx
put "x = ", sx, "\nPlease enter the starting y coordinate: " ..
get sy
put "y = ", sy, "\nPlease enter the radius value: " ..
get r
put "Radius = ", r, "\nPlease enter the color NUMBER of your happy face: " ..
get c
put "Color = ", c, "\nPlease enter the direction you want the happy face to go in (1=right, 2=up, 3=left, 4=down): " ..
get d
put "Direction = ", d, "\nPlease enter the pixel speed that happy face will move: " ..
get s
put "Speed = ", s, "\nPlease enter how many steps you want the happy face to move by: " ..
get l
put "Loops = ", l, "\nPlease enter the delay: " ..
get de
put "Delay = ", de ..

delay (500)
cls
locate (1,1) put "Sliding." ..

slide (sx,sy,r,c,d,l,s,de)

locate (1,1) put "Done sliding." ..
