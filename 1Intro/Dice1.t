import Dice in "classes/Dice.cla"
setscreen("graphics:640;480")
% Declaration of program work variables
var iColour, iPixelX, iPixelY, iSize, iSpots : int

% Declaration of Dice object indentifer
var DiceObject :  pointer to Dice

% Creation of the heart object
new DiceObject

for counter : 1 .. 6
% Roll die & get its value
%DiceObject -> roll
%iSpots := DiceObject -> getNumber

DiceObject -> setNumber(counter)

% Set up position, size, colour
DiceObject -> setCentre(50, 240)
if counter = 1 then DiceObject -> setCentre(50, 240)
elsif counter = 2 then DiceObject -> setCentre(50+60, 240)
elsif counter = 3 then DiceObject -> setCentre(110+60, 240)
elsif counter = 4 then DiceObject -> setCentre(170+60, 240)
elsif counter = 5 then DiceObject -> setCentre(230+60, 240)
elsif counter = 6 then DiceObject -> setCentre(290+60, 240)
end if
DiceObject -> setSize(40)
DiceObject -> setBackColour(green)

% draw it, then wait, erase, report value
DiceObject -> draw
/*
delay(1000)
DiceObject -> erase
put "It was a: ", iSpots
*/
end for
