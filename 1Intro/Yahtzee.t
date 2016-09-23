import Dice in "classes/Dice.cla"
setscreen ("graphics:640;480")

var x, y, button, rolledcounter, clickcounter, selectdicecounter, dicenumber, samedicetotal : int := 0
var ifclick, selected : boolean := false
var ifmove1, ifmove2, ifmove3, ifmove4, ifmove5, ifmove6 : boolean := true
var ovselected1, ovselected2, ovselected3, ovselected4, ovselected5, ovselected6, data1, data2, data3, data4, data5, data6, dice1 : int := 0


var DiceObject1, DiceObject2, DiceObject3, DiceObject4, DiceObject5, DiceObject6, choice : pointer to Dice
new DiceObject1
new DiceObject2
new DiceObject3
new DiceObject4
new DiceObject5
new DiceObject6

DiceObject1 -> setSize (40)
DiceObject2 -> setSize (40)
DiceObject3 -> setSize (40)
DiceObject4 -> setSize (40)
DiceObject5 -> setSize (40)
DiceObject6 -> setSize (40)
DiceObject1 -> setCentre (50, 400)
DiceObject2 -> setCentre (110, 400)
DiceObject3 -> setCentre (170, 400)
DiceObject4 -> setCentre (230, 400)
DiceObject5 -> setCentre (290, 400)
DiceObject6 -> setCentre (350, 400)

locate (2, 5)
put "Roll 1 : Select a number by clicking on a die." ..

Draw.MapleLeaf (410, 350, 510, 450, brightred)
locatexy (447, 395)
put "ROLL~" ..

procedure waituntillup
    loop
        Mouse.Where (x, y, button)
        exit when button = 0
    end loop
end waituntillup


procedure putdata (data1, data2, data3, data4, data5, data6 : int)
    locate (10,4) put"Number | Points"
    locate (11,4) put "---------------"
    locate (12,9) put "1":2, '|':1, data1:3
    locate (13,9) put "2":2, '|':1, data2:3
    locate (14,9) put "3":2, '|':1, data3:3
    locate (15,9) put "4":2, '|':1, data4:3
    locate (16,9) put "5":2, '|':1, data5:3
    locate (17,9) put "6":2, '|':1, data6:3
    locate (18,4) put "---------------"
    locate (19,4) put"Total Points:", data1+data2+data3+data4+data5+data6:3
    if rolledcounter = 12 then
        locate (13, 25) put "Game Finished! Your final points is", data1+data2+data3+data4+data5+data6:3, '.'
    end if
end putdata



procedure selectrestdice (dicenumber : int)
    var dice1, dice2, dice3, dice4, dice5, dice6 : int := 0
    dice1 := DiceObject1 -> getNumber
    dice2 := DiceObject2 -> getNumber
    dice3 := DiceObject3 -> getNumber
    dice4 := DiceObject4 -> getNumber
    dice5 := DiceObject5 -> getNumber
    dice6 := DiceObject6 -> getNumber
    samedicetotal :=0
    
    if dicenumber = 1 then
        if dice1 = 1 then
            DiceObject1 -> setColour (green)
            DiceObject1 -> draw
            ifmove1 := false
            samedicetotal +=1
        end if
        if dice2 = 1 then
            DiceObject2 -> setColour (green)
            DiceObject2 -> draw
            ifmove2 := false
            samedicetotal +=1
        end if
        if dice3 = 1 then
            DiceObject3 -> setColour (green)
            DiceObject3 -> draw
            ifmove3 := false
            samedicetotal +=1
        end if
        if dice4 = 1 then
            DiceObject4 -> setColour (green)
            DiceObject4 -> draw
            ifmove4 := false
            samedicetotal +=1
        end if
        if dice5 = 1 then
            DiceObject5 -> setColour (green)
            DiceObject5 -> draw
            ifmove5 := false
            samedicetotal +=1
        end if
        if dice6 = 1 then
            DiceObject6 -> setColour (green)
            DiceObject6 -> draw
            ifmove6 := false
            samedicetotal +=1
        end if
        data1 := 1*samedicetotal
        
    elsif dicenumber = 2 then
        if dice1 = 2 then
            DiceObject1 -> setColour (green)
            DiceObject1 -> draw
            ifmove1 := false
            samedicetotal +=1
        end if
        if dice2 = 2 then
            DiceObject2 -> setColour (green)
            DiceObject2 -> draw
            ifmove2 := false
            samedicetotal +=1
        end if
        if dice3 = 2 then
            DiceObject3 -> setColour (green)
            DiceObject3 -> draw
            ifmove3 := false
            samedicetotal +=1
        end if
        if dice4 = 2 then
            DiceObject4 -> setColour (green)
            DiceObject4 -> draw
            ifmove4 := false
            samedicetotal +=1
        end if
        if dice5 = 2 then
            DiceObject5 -> setColour (green)
            DiceObject5 -> draw
            ifmove5 := false
            samedicetotal +=1
        end if
        if dice6 = 2 then
            DiceObject6 -> setColour (green)
            DiceObject6 -> draw
            ifmove6 := false
            samedicetotal +=1
        end if
        data2 := 2*samedicetotal
        
    elsif dicenumber = 3 then
        if dice1 = 3 then
            DiceObject1 -> setColour (green)
            DiceObject1 -> draw
            ifmove1 := false
            samedicetotal +=1
        end if
        if dice2 = 3 then
            DiceObject2 -> setColour (green)
            DiceObject2 -> draw
            ifmove2 := false
            samedicetotal +=1
        end if
        if dice3 = 3 then
            DiceObject3 -> setColour (green)
            DiceObject3 -> draw
            ifmove3 := false
            samedicetotal +=1
        end if
        if dice4 = 3 then
            DiceObject4 -> setColour (green)
            DiceObject4 -> draw
            ifmove4 := false
            samedicetotal +=1
        end if
        if dice5 = 3 then
            DiceObject5 -> setColour (green)
            DiceObject5 -> draw
            ifmove5 := false
            samedicetotal +=1
        end if
        if dice6 = 3 then
            DiceObject6 -> setColour (green)
            DiceObject6 -> draw
            ifmove6 := false
            samedicetotal +=1
        end if
        data3 := 3*samedicetotal
        
    elsif dicenumber = 4 then
        if dice1 = 4 then
            DiceObject1 -> setColour (green)
            DiceObject1 -> draw
            ifmove1 := false
            samedicetotal +=1
        end if
        if dice2 = 4 then
            DiceObject2 -> setColour (green)
            DiceObject2 -> draw
            ifmove2 := false
            samedicetotal +=1
        end if
        if dice3 = 4 then
            DiceObject3 -> setColour (green)
            DiceObject3 -> draw
            ifmove3 := false
            samedicetotal +=1
        end if
        if dice4 = 4 then
            DiceObject4 -> setColour (green)
            DiceObject4 -> draw
            ifmove4 := false
            samedicetotal +=1
        end if
        if dice5 = 4 then
            DiceObject5 -> setColour (green)
            DiceObject5 -> draw
            ifmove5 := false
            samedicetotal +=1
        end if
        if dice6 = 4 then
            DiceObject6 -> setColour (green)
            DiceObject6 -> draw
            ifmove6 := false
            samedicetotal +=1
        end if
        data4 := 4*samedicetotal
    elsif dicenumber = 5 then
        if dice1 = 5 then
            DiceObject1 -> setColour (green)
            DiceObject1 -> draw
            ifmove1 := false
            samedicetotal +=1
        end if
        if dice2 = 5 then
            DiceObject2 -> setColour (green)
            DiceObject2 -> draw
            ifmove2 := false
            samedicetotal +=1
        end if
        if dice3 = 5 then
            DiceObject3 -> setColour (green)
            DiceObject3 -> draw
            ifmove3 := false
            samedicetotal +=1
        end if
        if dice4 = 5 then
            DiceObject4 -> setColour (green)
            DiceObject4 -> draw
            ifmove4 := false
            samedicetotal +=1
        end if
        if dice5 = 5 then
            DiceObject5 -> setColour (green)
            DiceObject5 -> draw
            ifmove5 := false
            samedicetotal +=1
        end if
        if dice6 = 5 then
            DiceObject6 -> setColour (green)
            DiceObject6 -> draw
            ifmove6 := false
            samedicetotal +=1
        end if
        data5 := 5*samedicetotal
        
    elsif dicenumber = 6 then
        if dice1 = 6 then
            DiceObject1 -> setColour (green)
            DiceObject1 -> draw
            ifmove1 := false
            samedicetotal +=1
        end if
        if dice2 = 6 then
            DiceObject2 -> setColour (green)
            DiceObject2 -> draw
            ifmove2 := false
            samedicetotal +=1
        end if
        if dice3 = 6 then
            DiceObject3 -> setColour (green)
            DiceObject3 -> draw
            ifmove3 := false
            samedicetotal +=1
        end if
        if dice4 = 6 then
            DiceObject4 -> setColour (green)
            DiceObject4 -> draw
            ifmove4 := false
            samedicetotal +=1
        end if
        if dice5 = 6 then
            DiceObject5 -> setColour (green)
            DiceObject5 -> draw
            ifmove5 := false
            samedicetotal +=1
        end if
        if dice6 = 6 then
            DiceObject6 -> setColour (green)
            DiceObject6 -> draw
            ifmove6 := false
            samedicetotal +=1
        end if
        data6 := 6*samedicetotal
    end if
    %putdata (data1, data2, data3, data4, data5, data6)
end selectrestdice

function ovselected (dicen : int) : boolean
    if rolledcounter = 1 then
        ovselected1 := dicen
    elsif rolledcounter = 3 then
        ovselected2 := dicen
    elsif rolledcounter = 5 then
        ovselected3 := dicen
    elsif rolledcounter = 7 then
        ovselected4 := dicen
    elsif rolledcounter = 9 then
        ovselected5 := dicen
    elsif rolledcounter = 11 then
        ovselected6 := dicen
    end if
    
    if rolledcounter = 3 then
        if dicen = ovselected1 then
            result false
        end if
    elsif rolledcounter = 5 then
        if dicen = ovselected2 or dicen = ovselected1 then
            result false
        end if
    elsif rolledcounter = 7 then
        if dicen = ovselected3 or dicen = ovselected2 or dicen = ovselected1 then
            result false
        end if
    elsif rolledcounter = 9 then
        if dicen = ovselected4 or dicen = ovselected3 or dicen = ovselected2 or dicen = ovselected1 then
            result false
        end if
    elsif rolledcounter = 11 then
        if dicen = ovselected5 or dicen = ovselected4 or dicen = ovselected3 or dicen = ovselected2 or dicen = ovselected1 then
            result false
        end if
    end if
    result true
end ovselected

function selectable (dicex, button : int) : boolean
    if rolledcounter mod 2 = 0 then
        result false
    end if
    if button = 1 and selected = false then
        if dicex = 1 then
            if x > 50 - 20 and x < 50 + 20 and y > 400 - 20 and y < 400 + 20 and ifmove1 = true and ovselected (DiceObject1 -> getNumber) then
                result true
            end if
        elsif dicex = 2 then
            if x > 110 - 20 and x < 110 + 20 and y > 400 - 20 and y < 400 + 20 and ifmove2 = true and ovselected (DiceObject2 -> getNumber) then
                result true
            end if
        elsif dicex = 3 then
            if x > 170 - 20 and x < 170 + 20 and y > 400 - 20 and y < 400 + 20 and ifmove3 = true and ovselected (DiceObject3 -> getNumber) then
                result true
            end if
        elsif dicex = 4 then
            if x > 230 - 20 and x < 230 + 20 and y > 400 - 20 and y < 400 + 20 and ifmove4 = true and ovselected (DiceObject4 -> getNumber) then
                result true
            end if
        elsif dicex = 5 then
            if x > 290 - 20 and x < 290 + 20 and y > 400 - 20 and y < 400 + 20 and ifmove6 = true and ovselected (DiceObject5 -> getNumber) then
                result true
            end if
        elsif dicex = 6 then
            if x > 350 - 20 and x < 350 + 20 and y > 400 - 20 and y < 400 + 20 and ifmove6 = true and ovselected (DiceObject6 -> getNumber) then
                result true
            end if
        end if
    end if
    
    result false
    
end selectable

procedure randomchange    
    var randnumber, missing : int := Rand.Int (1,6)
    loop
        missing := Rand.Int (1,6)
        exit when missing not= ovselected1 and missing not= ovselected2 and missing not= ovselected3 and missing not= ovselected4 and missing not= ovselected5 and missing not= ovselected6
    end loop
    if randnumber = 1 then
        DiceObject1 -> setNumber(missing)
        DiceObject1 -> draw
    elsif randnumber = 2 then
        DiceObject2 -> setNumber(missing)
        DiceObject2 -> draw
    elsif randnumber = 3 then
        DiceObject3 -> setNumber(missing)
        DiceObject3 -> draw
    elsif randnumber = 4 then
        DiceObject4 -> setNumber(missing)
        DiceObject4 -> draw
    elsif randnumber = 5 then
        DiceObject5 -> setNumber(missing)
        DiceObject5 -> draw
    elsif randnumber = 6 then
        DiceObject6 -> setNumber(missing)
        DiceObject6 -> draw
    end if
end randomchange

procedure newround (ifmove1, ifmove2, ifmove3, ifmove4, ifmove5, ifmove6 : boolean)
    if ifmove1 = true then
        DiceObject1 -> setColour (black)
        DiceObject1 -> roll
        DiceObject1 -> draw
    end if
    if ifmove2 = true then
        DiceObject2 -> setColour (black)
        DiceObject2 -> roll
        DiceObject2 -> draw
    end if
    if ifmove3 = true then
        DiceObject3 -> setColour (black)
        DiceObject3 -> roll
        DiceObject3 -> draw
    end if
    if ifmove4 = true then
        DiceObject4 -> setColour (black)
        DiceObject4 -> roll
        DiceObject4 -> draw
    end if
    if ifmove5 = true then
        DiceObject5 -> setColour (black)
        DiceObject5 -> roll
        DiceObject5 -> draw
    end if
    if ifmove6 = true then
        DiceObject6 -> setColour (black)
        DiceObject6 -> roll
        DiceObject6 -> draw
    end if
    var dice1, dice2, dice3, dice4, dice5, dice6 : int := 0
    dice1 := DiceObject1 -> getNumber
    dice2 := DiceObject2 -> getNumber
    dice3 := DiceObject3 -> getNumber
    dice4 := DiceObject4 -> getNumber
    dice5 := DiceObject5 -> getNumber
    dice6 := DiceObject6 -> getNumber
    if rolledcounter = 2 then
        if dice1 = ovselected1 and dice2 = ovselected1 and dice3 = ovselected1 and dice4 = ovselected1 and dice5 = ovselected1 and dice6 = ovselected1 then
            randomchange
        end if
    elsif rolledcounter = 4 then
        if dice1 = ovselected1 or dice1 = ovselected2 then
            if dice2 = ovselected1 or dice2 = ovselected2 then
                if dice3 = ovselected1 or dice3 = ovselected2 then
                    if dice4 = ovselected1 or dice4 = ovselected2 then
                        if dice5 = ovselected1 or dice5 = ovselected2 then
                            if dice6 = ovselected1 or dice6 = ovselected2 then
                                randomchange
                            end if
                        end if
                    end if
                end if
            end if
        end if
    elsif rolledcounter = 6 then
        if dice1 = ovselected1 or dice1 = ovselected2 or dice1 = ovselected3 then
            if dice2 = ovselected1 or dice2 = ovselected2 or dice2 = ovselected3 then
                if dice3 = ovselected1 or dice3 = ovselected2 or dice3 = ovselected3 then
                    if dice4 = ovselected1 or dice4 = ovselected2 or dice4 = ovselected3 then
                        if dice5 = ovselected1 or dice5 = ovselected2 or dice5 = ovselected3 then
                            if dice6 = ovselected1 or dice6 = ovselected2 or dice6 = ovselected3 then
                                randomchange
                            end if
                        end if
                    end if
                end if
            end if
        end if
    elsif rolledcounter = 8 then
        if dice1 = ovselected1 or dice1 = ovselected2 or dice1 = ovselected3 or dice1 = ovselected4 then
            if dice2 = ovselected1 or dice2 = ovselected2 or dice2 = ovselected3 or dice2 = ovselected4 then
                if dice3 = ovselected1 or dice3 = ovselected2 or dice3 = ovselected3 or dice3 = ovselected4 then
                    if dice4 = ovselected1 or dice4 = ovselected2 or dice4 = ovselected4 or dice4 = ovselected4 then
                        if dice5 = ovselected1 or dice5 = ovselected2 or dice5 = ovselected3 or dice5 = ovselected4 then
                            if dice6 = ovselected1 or dice6 = ovselected2 or dice6 = ovselected3 or dice6 = ovselected4 then
                                randomchange
                            end if
                        end if
                    end if
                end if
            end if
        end if
    elsif rolledcounter = 10 then
        if dice1 = ovselected1 or dice1 = ovselected2 or dice1 = ovselected3 or dice1 = ovselected4 or dice1 = ovselected5 then
            if dice2 = ovselected1 or dice2 = ovselected2 or dice2 = ovselected3 or dice2 = ovselected4 or dice2 = ovselected5 then
                if dice3 = ovselected1 or dice3 = ovselected2 or dice3 = ovselected3 or dice3 = ovselected4 or dice3 = ovselected5 then
                    if dice4 = ovselected1 or dice4 = ovselected2 or dice4 = ovselected3 or dice4 = ovselected4 or dice4 = ovselected5 then
                        if dice5 = ovselected1 or dice5 = ovselected2 or dice5 = ovselected3 or dice5 = ovselected4 or dice5 = ovselected5 then
                            if dice6 = ovselected1 or dice6 = ovselected2 or dice6 = ovselected3 or dice6 = ovselected4 or dice6 = ovselected5 then
                                randomchange
                            end if
                        end if
                    end if
                end if
            end if
        end if
    end if
end newround


procedure selectdice
    
    if selectable (1, button) then
        DiceObject1 -> setColour (green)
        DiceObject1 -> draw
        dicenumber := DiceObject1 -> getNumber
        selectrestdice (dicenumber)
        selected := true
    elsif selectable (2, button) then
        DiceObject2 -> setColour (green)
        DiceObject2 -> draw
        dicenumber := DiceObject2 -> getNumber
        selectrestdice (dicenumber)
        selected := true
    elsif selectable (3, button) then
        DiceObject3 -> setColour (green)
        DiceObject3 -> draw
        dicenumber := DiceObject3 -> getNumber
        selectrestdice (dicenumber)
        selected := true
    elsif selectable (4, button) then
        DiceObject4 -> setColour (green)
        DiceObject4 -> draw
        dicenumber := DiceObject4 -> getNumber
        selectrestdice (dicenumber)
        selected := true
    elsif selectable (5, button) then
        DiceObject5 -> setColour (green)
        DiceObject5 -> draw
        dicenumber := DiceObject5 -> getNumber
        selectrestdice (dicenumber)
        selected := true
    elsif selectable (6, button) then
        DiceObject6 -> setColour (green)
        DiceObject6 -> draw
        dicenumber := DiceObject6 -> getNumber
        selectrestdice (dicenumber)
        selected := true
    end if
    
end selectdice

putdata (data1, data2, data3, data4, data5, data6)

loop
    exit when rolledcounter = 12
    waituntillup
    if ifclick = true or rolledcounter = 0 then
        newround (ifmove1, ifmove2, ifmove3, ifmove4, ifmove5, ifmove6)
        selected := false
    end if
    rolledcounter += 1
    locate (2, 5) put "Roll ", rolledcounter, ": Select a number by clicking on a die."..
    if rolledcounter mod 2 = 0 then
        selectrestdice (dicenumber)
        putdata (data1, data2, data3, data4, data5, data6)
        selected := true
        waituntillup
        ifmove1 := true
        ifmove2 := true
        ifmove3 := true
        ifmove4 := true
        ifmove5 := true
        ifmove6 := true
    end if
    
    loop
        Mouse.Where (x, y, button)
        exit when rolledcounter = 12
        selectdice
        if x > 410 and x < 510 and y > 350 and y < 510 and button = 1 and selected then
            ifclick := true
            exit
        else
            ifclick := false
        end if
    end loop
    
end loop
