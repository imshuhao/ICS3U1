/*
 * Jeremy Dong
 * Novenmber 2016
 */

%set dafult
setscreen ("graphics:1920;1080")

include "lib.t"

%level 2
fcn isInt (str : string) : boolean
    var l := length (str)
    var is := true
    if l = 0 then
	result false
    elsif l = 1 then
	if ord (str (1)) < 48 or ord (str (1)) > 57 then
	    is := false
	end if
    else
	if (ord (str (1)) < 48 or ord (str (1)) > 57) xor (ord (str (1)) = 43 or ord (str (1)) = 45) then
	    is := false
	end if
	for i : 2 .. l
	    if ord (str (i)) < 48 or ord (str (i)) > 57 then
		is := false
	    end if
	end for
    end if
    result is
end isInt

fcn addInt (str1, str2 : string) : string
    if isInt (str1) = isInt (str2) = true then
	result intstr (strint (str1) + strint (str2))
    end if
    result "error"
end addInt

%main

var line := 0
var filename := "MyText.txt"
var sWord : string
var stream := 0
var rptline : array 1 .. 50000 of string
var rpt := "Word\t\t\tAscii Code\t\t\tPig Latin\t\t\tNo Vowels\t\t\tAll Caps\t\t\tReversed\n"
put "Please input the filename:" ..
get filename
put "Trying to open \"", filename, "\"..." ..
delay (1000)
put "OK"
delay (500)
cls
StoF("rpt.txt", rpt,stream)
open : stream, filename, get
for i : 1 .. 5000
    get : stream, skip
    exit when eof (stream)
    line := i
    get : stream, sWord
    rptline (i) := sWord + "\t\t\t" + getAsciiCodes (sWord) + "\t\t\t" + toPigLatin (sWord) + "\t\t\t" + removeVowels (sWord) + "\t\t\t" + toAllCaps (sWord) + "\t\t\t" + reverseWord (sWord) + "\n"
end for
close : stream
put rpt
for i : 1 .. line
    put rptline (i)
    StoF("rpt.txt", rptline (i),stream)
    delay (100)
end for

