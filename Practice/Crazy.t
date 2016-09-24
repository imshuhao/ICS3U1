setscreen("graphics:640;480")

locatexy(maxx div 2, maxy div 2) put "Are You Ready?"
delay (3000)
locatexy(maxx div 2, maxy div 2) put "3!"
delay (1000)
locatexy(maxx div 2, maxy div 2) put "2!"
delay (1000)
locatexy(maxx div 2, maxy div 2) put "1!"
delay (1000)
locatexy(maxx div 2, maxy div 2) put "Don't Stop!"
delay (1000)

loop
    for counter : 1 .. 2
        var r : int := 0
        loop
            exit when r > maxy
            r+=10
            Draw.FillOval (maxx div 2, maxy div 2, r, r, Rand.Int (1, 255))
            delay (20)
        end loop
        
        loop
            exit when r = 0
            r-=10
            Draw.FillOval (maxx div 2, maxy div 2, r, r, Rand.Int (1, 255))
            delay (20)
        end loop
    end for
        
    for counter : 1 .. 2
        var x1,x2 : int :=maxx div 2
        var y1,y2 : int :=maxy div 2
        
        loop
            exit when x2 > 2 * maxx + 100 and y2 > 2 * maxy + 100
            x1 -= 20
            y1 -= 20
            x2 += 20
            y2 += 20
            Draw.FillStar (x1, y1, x2, y2, Rand.Int (1, 255))
            delay (20)
        end loop
        
        loop
            exit when x2 < maxx div 2 and y2 < maxy div 2
            x1 += 20
            y1 += 20
            x2 -= 20
            y2 -= 20
            Draw.FillStar (x1, y1, x2, y2, Rand.Int (1, 255))
            delay (20)
        end loop
    end for
        
    for counter : 1 .. 2
        var x1,x2 : int :=maxx div 2
        var y1,y2 : int :=maxy div 2
        
        loop
            exit when x2 > 2 * maxx + 100 and y2 > 2 * maxy + 100
            x1 -= 20
            y1 -= 20
            x2 += 20
            y2 += 20
            Draw.FillMapleLeaf  (x1, y1, x2, y2, Rand.Int (1, 255))
            delay (20)
        end loop
        
        loop
            exit when x2 < maxx div 2 and y2 < maxy div 2
            x1 += 20
            y1 += 20
            x2 -= 20
            y2 -= 20
            Draw.FillMapleLeaf  (x1, y1, x2, y2, Rand.Int (1, 255))
            delay (20)
        end loop
    end for
end loop