%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Programmer:
%Date:
%Course:  ICS3CU1
%Teacher:
%Program Name:
%Descriptions:  Final Program Name Here and a brief description of the game
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%   MyGlobalVars.t
%   All global variables are coded in this file.
%   These will have FILE scope.
%   These must be document thoroughly - Descriptive name,
    %   where used and for what purpose

% Main program variables
var YesToInstructions : string (1)

%Introduction Window
var isIntroWindowOpen : boolean % Flag for Introduction Window state open or closed
var isFontWindowOpen : boolean


proc setInitialGameValues
    
    isIntroWindowOpen := false
    isFontWindowOpen := false
    
end setInitialGameValues

var difficulty : int := 0

var sudoku : array 1 .. 9, 1 .. 9 of int

var userdata : array 1 .. 9, 1 .. 9 of int

type grid :
record
    N : int
    F : boolean
    ch : boolean
end record

var S : array 1 .. 9, 1 .. 9 of grid
var spot : boolean := false

var t:=0