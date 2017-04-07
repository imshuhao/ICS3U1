/*
 * Jeremy Dong
 * October 2016
 */

%set dafult
setscreen ("graphics:600;800")

include "lib.t"

function getMenuSelection : string (1)
    put "================================================="
    put "  MENU   by   Jeremy Dong"
    const Indent : string := repeat (" ", 5)
    var selection : string (1)


    put "=================================================\n"

    put Indent, "8. Set a new word"
    put Indent, "A. countLetters"
    put Indent, "B. switchFirstLast"
    put Indent, "C. toPigLatin"
    put Indent, "D. reverseWord"
    put Indent, "E. getAsciiCodes"
    put Indent, "F. toAllCaps"
    put Indent, "G. toInitialCap"
    put Indent, "H. countVowels"
    put Indent, "I. removeVowels"
    put "\n=================================================\n"
    put Indent, "0. Set a new text file"
    put Indent, "J. displayWords"
    put Indent, "K. displayChars"
    put Indent, "L. displayLines"
    put Indent, "M. getWordCount"
    put Indent, "N. getCharCount"
    put Indent, "O. getLineCount"
    put Indent, "P. getAvgWordLength"
    put Indent, "R. getMaxWordLength"
    put Indent, "S. searchWord"


    put "\n", Indent, "q or Q to quit\n"
    put "=================================================\n"
    put Indent, "Enter your selection: " ..
    getch (selection)
    put "\n"

    result selection

end getMenuSelection

%main

var Word : string := "Not set Word Yet"
var Filename := "MyText.txt"
var selection : string (1)
colorback (yellow)
color (black)

loop

    cls
    selection := getMenuSelection
    % Read about the case statement in Help Facility
    case (selection) of

	label "8" :
	    %Set a new word (or phrase)
	    put "\nEnter a new word:  " ..
	    get Word : *
	    put "\nNew word \"", Word, "\" has been set."

	label "q", "Q" :
	    exit

	label "a", "A" :
	    put "Length of word - ", Word, " - is ", countCharacters (Word), "."


	label "b", "B" :
	    put Word, " ---> ", switchFirstLast (Word)

	label "c", "C" :
	    put Word, " ---> ", toPigLatin (Word)

	label "d", "D" :
	    put Word, " ---> ", reverseWord (Word)

	label "e", "E" :
	    put Word, " ---> ", getAsciiCodes (Word)

	label "f", "F" :
	    put Word, " ---> ", toAllCaps (Word)

	label "g", "G" :
	    put Word, " ---> ", toInitialCap (Word)

	label "h", "H" :
	    put Word, " ---> ", countVowels (Word)

	label "i", "I" :
	    put Word, " ---> ", removeVowels (Word)
	    %===================================================================
	label "0" :
	    %Set a new file
	    put "\nEnter a new filename:  " ..
	    get Filename : *
	    put "\nNew filename \"", Filename, "\" has been set."

	label "j", "J" :
	    put "\"", Filename, "\" ---> "
	    displayWords (Filename)

	label "k", "K" :
	    put "\"", Filename, "\" ---> "
	    displayChars (Filename)

	label "l", "L" :
	    put "\"", Filename, "\" ---> "
	    displayLines (Filename)

	label "m", "M" :
	    put "\"", Filename, "\" ---> ", getWordCount (Filename)

	label "n", "N" :
	    put "\"", Filename, "\" ---> ", getCharCount (Filename)

	label "o", "O" :
	    put "\"", Filename, "\" ---> ", getLineCount (Filename)

	label "p", "P" :
	    put "\"", Filename, "\" ---> ", getAvgWordLength (Filename)

	label "r", "R" :
	    put "\"", Filename, "\" ---> ", getMaxWordLength (Filename)

	label "s", "S" :
	    put "\nEnter a word to search:  " ..
	    var sWord := ""
	    get sWord
	    put "Word \"", sWord, "\" in file \"", Filename, "\" ---> ", searchWord (Filename, sWord)

	label :
	    put "\nDon't understand - ", selection, " - Try again."

    end case

    %Hold screen for user to see
    put "\nEnter any key to continue..." ..
    getch (selection)

end loop

put "\n\n               Good bye   :)"
