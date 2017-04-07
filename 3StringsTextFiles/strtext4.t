/*
 * Jeremy Dong
 * Novenmber 2016
 */

%set dafult
setscreen ("graphics:1920;1080")

include "lib.t"

fcn reverseword (str : string) : string
    var re := ""
    var lp := 1
    for i : 1 .. length (str)
	if str (i) = ' ' then
	    re := str (lp .. i - 1) + ' ' + re
	    lp := i + 1
	end if
    end for
    if lp = 1 then
	result str
    end if
    for decreasing j : length (str) .. 1
	if str (j) = ' ' then
	    re := str (j + 1 .. *) + ' ' + re
	    exit
	end if
    end for
    result re (1 .. * -1)
end reverseword

proc encodeFile (filename : string)
    var en := filename (1 .. * -4) + "Encoded.txt"
    var line := ""
    var stream : int
    open : stream, filename, get
    if stream > 0 then
	loop
	    %input from file
	    exit when eof (stream)
	    get : stream, line : *
	    line := reverseword (line)
	    modF (en, line)
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
end encodeFile

proc decodeFile (filename : string)
    var en := filename (1 .. * -4) + "Decoded.txt"
    var line := ""
    var stream : int
    open : stream, filename, get
    if stream > 0 then
	loop
	    %input from file
	    exit when eof (stream)
	    get : stream, line : *
	    line := reverseword (line)
	    modF (en, line)
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
end decodeFile

fcn reword (str : string) : string
    var l := length (str)
    if l < 3 then
	result str
    else
	var mid := l div 2
	if l mod 2 = 0 then
	    result str (mid .. mid + 1) + str (1 .. mid - 1) + str (mid + 2 .. *)
	else
	    result str (mid + 1) + str (1 .. mid) + str (mid + 2 .. *)
	end if
    end if
    result ""
end reword

fcn reversewordUp (str : string) : string
    var re := ""
    var lp := 1
    for i : 1 .. length (str)
	if str (i) = ' ' then
	    re := reword (str (lp .. i - 1)) + ' ' + re
	    lp := i + 1
	end if
    end for
    if lp = 1 then
	result reword (str)
    end if
    for decreasing j : length (str) .. 1
	if str (j) = ' ' then
	    re := reword (str (j + 1 .. *)) + ' ' + re
	    exit
	end if
    end for
    result re (1 .. * -1)
end reversewordUp

proc encodeFileUp (filename : string)
    var en := filename (1 .. * -4) + "EncodedUp.txt"
    var line := ""
    var stream : int
    open : stream, filename, get
    if stream > 0 then
	loop
	    %input from file
	    exit when eof (stream)
	    get : stream, line : *
	    line := reversewordUp (line)
	    modF (en, line)
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
end encodeFileUp

%decodeFile ("testEncoded.txt")
put reversewordUp ("abcd efgh hijklmn")
