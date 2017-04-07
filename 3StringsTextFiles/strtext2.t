/*
 * Jeremy Dong
 * Novenmber 2016
 */

%set dafult
setscreen ("graphics:1920;1080")

include "lib.t"

%main

var line := 0
var filename := "MyText.txt"
var sWord : string
var stream := 0
var rptline : array 1 .. 50000 of string
var rpt := "Word\t\t\tAscii Code\t\t\tPig Latin\t\t\tNo Vowels\t\t\tAll Caps\t\t\tReversed\n"
put "Please input the filename:" ..
get filename
/*
 put "Trying to open \"", filename, "\"..." ..
 delay (1000)
 put "OK"
 delay (500)
 put "Analysing content..." ..
 delay (1000)
 put "OK"
 delay (500)
 put "Generating report..." ..
 delay (1000)
 put "OK"
 delay (500)
 */
cls
var rptname := "rpt.txt"
var s : int
open : s, rptname, put
put : s, "" ..
close : s
modF (rptname, rpt)
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
    modF (rptname, rptline (i))
    delay (100)
end for
