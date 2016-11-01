/*
 * Jeremy Dong
 * Novenmber 2016
 */

%set dafult
setscreen ("graphics:600;800")


%string
proc sort (var a : array 1 .. * of int)
    var N : int := upper (a)
    var tt := 0
    var minIndex : int
    for i : 1 .. (N - 1)
	minIndex := i
	for j : i .. N
	    if (a (j) < a (minIndex)) then
		minIndex := j
	    end if
	end for
	if (minIndex > i) then
	    tt := a (i)
	    a (i) := a (minIndex)
	    a (minIndex) := tt
	end if
    end for
end sort

fcn countCharacters (str : string) : int
    var l := 0
    var iStr := str
    loop
	exit when iStr = ""
	l += 1
	iStr := iStr (2 .. *)
    end loop
    result l
end countCharacters

fcn switchFirstLast (str : string) : string
    var l := countCharacters (str)
    if l = 1 then
	result str
    elsif l > 1 then
	result str (l) + str (2 .. l - 1) + str (1)
    end if
    result ""
end switchFirstLast

fcn toPigLatin (str : string) : string
    var pig := str

    var pos : array 1 .. 10 of int := init (0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    var vowel : array 1 .. 10 of char := init ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
    for i : 1 .. 10
	pos (i) := index (str, vowel (i))
    end for
    sort (pos)
    for i : 1 .. 10
	if pos (i) not= 0 and pos (i) not= 1 then
	    result str (pos (i) .. *) + str (1 .. pos (i) - 1) + "ay"
	elsif pos (i) = 1 then
	    result str (pos (i) + 1 .. *) + str (pos (i)) + "ay"
	end if
    end for
    result str + "ay"
end toPigLatin

fcn reverseWord (str : string) : string
    var l := countCharacters (str)
    if l = 1 then
	result str (1)
    elsif l = 0 then
	result str
    end if
    result str (l) + reverseWord (str (1 .. l - 1))
end reverseWord

fcn getAsciiCodes (str : string) : string
    var l := countCharacters (str)
    var asc := ""
    for i : 1 .. l
	if i = l then
	    asc += intstr (ord (str (i)))
	else
	    asc += intstr (ord (str (i))) + '-'
	end if
    end for
    result asc
end getAsciiCodes

fcn toAllCaps (str : string) : string
    var l := countCharacters (str)
    var cap := ""
    for i : 1 .. l
	var asc := ord (str (i))
	if asc >= 97 and asc <= 122 then
	    cap += chr (asc - 32)
	else
	    cap += str (i)
	end if
    end for
    result cap
end toAllCaps

fcn toInitialCap (str : string) : string
    var l := countCharacters (str)
    var ic := toAllCaps (str (1))
    for i : 2 .. l
	var asc := ord (str (i))
	if asc >= 65 and asc <= 90 then
	    ic += chr (asc + 32)
	else
	    ic += str (i)
	end if
    end for
    result ic
end toInitialCap

fcn countVowels (str : string) : int
    var pos : array 1 .. 10 of int := init (0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    var vowel : array 1 .. 10 of char := init ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
    for i : 1 .. 10
	pos (i) := index (str, vowel (i))
    end for
    sort (pos)
    for i : 1 .. 10
	if pos (i) > 0 then
	    result 1 + countVowels (str (pos (i) + 1 .. *))
	end if
    end for
    result 0
end countVowels

fcn removeVowels (str : string) : string
    var l := countCharacters (str)
    var vowel : array 1 .. 10 of char := init ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
    var rv := ""
    for i : 1 .. l
	var ifvowel := false
	for j : 1 .. 10
	    if str (i) = vowel (j) then
		ifvowel := true
	    end if
	end for
	if ifvowel = false then
	    rv += str (i)
	end if
    end for
    result rv
end removeVowels

%file
fcn FtoS (filename : string) : string
    var sWord, file := ""
    var stream : int
    open : stream, filename, get
    if stream > 0 then
	loop
	    %input from file
	    exit when eof (stream)
	    get : stream, sWord : 1
	    file += sWord
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
    result file
end FtoS

proc StoF (filename : string)

end StoF

proc displayWords (filename : string)
    var sWord : string
    var stream : int
    open : stream, filename, get
    if stream > 0 then
	loop
	    get : stream, skip
	    exit when eof (stream)
	    get : stream, sWord
	    put sWord
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
end displayWords

proc displayChars (filename : string)
    var ch := ""
    var stream : int
    open : stream, filename, get
    if stream > 0 then
	loop
	    %input from file
	    get : stream, skip
	    exit when eof (stream)
	    get : stream, ch : 1
	    put ch
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
end displayChars

proc displayLines (filename : string)
    var line := ""
    var stream : int
    open : stream, filename, get
    if stream > 0 then
	loop
	    %input from file
	    exit when eof (stream)
	    get : stream, line : *
	    put line
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
end displayLines

fcn getWordCount (filename : string) : int
    var sWord : string
    var stream : int
    var counter := 0
    open : stream, filename, get
    if stream > 0 then
	loop
	    get : stream, skip
	    exit when eof (stream)
	    get : stream, sWord
	    counter += 1
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
    result counter
end getWordCount

fcn getCharCount (filename : string) : int
    var ch := ""
    var counter := 0
    var stream : int
    open : stream, filename, get
    if stream > 0 then
	loop
	    %input from file
	    get : stream, skip
	    exit when eof (stream)
	    get : stream, ch : 1
	    counter += 1
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
    result counter
end getCharCount

fcn getLineCount (filename : string) : int
    var line := ""
    var counter := 0
    var stream : int
    open : stream, filename, get
    if stream > 0 then
	loop
	    %input from file
	    get : stream, skip
	    exit when eof (stream)
	    get : stream, line : *
	    counter += 1
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
    result counter
end getLineCount

fcn getAvgWordLength (filename : string) : real
    var l := getWordCount (filename)
    if l < 1 then
	result 0
    end if
    var Length : array 1 .. l of int
    var stream : int
    var sum := 0.0
    var sWord : string
    open : stream, filename, get
    if stream > 0 then
	for i : 1 .. l
	    get : stream, skip
	    exit when eof (stream)
	    get : stream, sWord
	    Length (i) := countCharacters (sWord)
	end for
	close : stream
	for i : 1 .. l
	    sum += Length (i)
	end for
	result sum / l
    else
	put "unable to open the file"
	result 0
    end if
end getAvgWordLength

fcn getMaxWordLength (filename : string) : int
    var stream : int
    var maxWord := 0
    var sWord : string
    open : stream, filename, get
    if stream > 0 then
	loop
	    get : stream, skip
	    exit when eof (stream)
	    get : stream, sWord
	    if countCharacters (sWord) > maxWord then
		maxWord := countCharacters (sWord)
	    end if
	end loop
	close : stream
    else
	put "unable to open the file"
    end if
    result maxWord
end getMaxWordLength

fcn stringIndex (text, word : string) : int
    var pos := index (text, word)
    if pos > 0 then
	result stringIndex (text (pos + 1 .. *), word) + 1
    end if
    result 0
end stringIndex

fcn searchWord (filename, word : string) : int
    result stringIndex (FtoS (filename), word)
end searchWord


%main

