setscreen ("graphics:640;480")
proc draw (ipCentreX, ipCentreY, iRadius, iColour : int)

    % Round face
    Draw.Oval (ipCentreX, ipCentreY, iRadius, iRadius, iColour)

    % Left eye
    Draw.Oval (ipCentreX - iRadius div 3, ipCentreY + iRadius div 3, iRadius div 6, iRadius div 6, iColour)

    % Right eye
    Draw.Oval (ipCentreX + iRadius div 3, ipCentreY + iRadius div 3, iRadius div 6, iRadius div 6, iColour)

    % Mouth
    Draw.Arc (ipCentreX, ipCentreY,( iRadius *3) div 4, ( iRadius *3) div 4, 180, 360, iColour)

end draw

var iCentreX, iCentreY, iRadius, iColour : int := 200

draw (iCentreX, iCentreY, iRadius, iColour)
