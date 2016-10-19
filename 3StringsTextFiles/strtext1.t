var str : string := ""

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
    if l = 0 then
	result ""
    elsif l = 1 then
	result str
    else
	result str (l) + str (2 .. l - 1) + str (1)
    end if
    result ""
end switchFirstLast

fcn toPigLatin (str : string) : string
    var pig := str

    var pos : array 1 .. 5 of int := init (0, 0, 0, 0, 0)
    var vowel : array 1 .. 5 of char := init ('a', 'e', 'i', 'o', 'u')
    for i : 1 .. 5
	pos (i) := index (str, vowel (i))
    end for
    sort (pos)
    for i : 1 .. 5
	if pos (i) not= 0 and pos (i) not= 1 then
	    result str (pos (i) .. *) + str (1 .. pos (i) - 1) + "ay"
	end if
    end for
    result str + "ay"
end toPigLatin

fcn reverseWord (str : string) : string
    var l := countCharacters (str)
    if l = 1 then
	result str (1)
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

put removeVowels ("AaEeIiOoUuhhh")
