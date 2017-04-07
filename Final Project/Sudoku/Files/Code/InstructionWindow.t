%Display Intstruction


proc displayInstructionWindow

    cls
    Pic.ScreenLoad ("Images/s.bmp", 80, 500, picCopy)
    locate (10, 1)
    var stream : int
    open : stream, "files/text/instructions.txt", get

    if stream > 0 then

	var Lines : string
	loop
	    exit when eof (stream)
	    get : stream, Lines : *
	    put Lines

	end loop
	close : stream
    else
	put "Unable to open file."

    end if

    var anyKey : string (1)

    put "\n\n   Press any key to continue..  " ..
    getch (anyKey)

end displayInstructionWindow
