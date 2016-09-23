import Dice in "classes/Dice.cla"
setscreen ("graphics:640;480")

var iSpots, dsum, CentreX, CentreY, dmax, dmin, osum, tn : int % Declaration of program work variables
var redo : char                                                % judge if redo the simulation
var DiceObject : pointer to Dice                               % Declaration of Dice object indentifer

new DiceObject                                                 % Creation of the heart object

osum := 0                                                      % overall sum
tn := 0                                                        % total number played
CentreY := 240                                                 % set defult y
DiceObject -> setSize (40)                                     % set size
DiceObject -> setBackColour (green)                            % set color

locate (2, 10) put "Die simulation" ..
locate (3, 5) put "The sum of the 6 dice for this roll" : 35 ..
locate (4, 5) put "The average of the 6 dice for this roll" : 35 ..
locate (5, 5) put "The largest number of the 6 dice rolled" : 35 ..
locate (6, 5) put "The smallest number of the 6 dice rolled" : 35 ..

loop
    dsum := 0                                                  % reset sum for each play
    dmax := 0
    dmin := 6
    CentreX := 50                                              % set & reset defult X
    for counter : 1 .. 6
	DiceObject -> roll                                     % Roll die
	iSpots := DiceObject -> getNumber                      % get its value
	dsum += iSpots                                         % add the sum of the rolls for each play
	if iSpots > dmax then dmax := iSpots                   % get maxmum
	elsif iSpots < dmin then dmin := iSpots                % get minimum
	end if
	DiceObject -> setCentre (CentreX, CentreY)             % set position
	locatexy (CentreX, CentreY + 40) put counter           % show the order
	locatexy (CentreX, CentreY - 40) put iSpots            % show the result in number
	DiceObject -> draw                                     % draw the die
	CentreX += 60                                          % prepare for the next roll
	locate (3, 50) put dsum : 7 : 1                        % output simulation data for each play
	locate (4, 50) put dsum / 6 : 7 : 1
	locate (5, 50) put dmax : 7 : 1
	locate (6, 50) put dmin : 7 : 1
    end for
    osum += dsum                                               % add the sum for this game to overall info
    tn += 1                                                    % counter for the total game played
    locate (8, 5) put "Go Again? (q or Q to quit): " ..
    redo := getchar                                            % get input
    exit when redo = 'q' or redo = 'Q'
end loop

locate (20, 10) put "Summary Statustics"
locate (21, 5) put "The Number of Simulations" : 20 ..
locate (22, 5) put "The Sum of all the Rolls" : 20 ..
locate (23, 5) put "Overall Average of Rolls" : 20 ..

locate (21, 30) put tn : 7 : 1                                 % output overall simulation data
locate (22, 30) put osum : 7 : 1
locate (23, 30) put osum / tn : 7 : 1
