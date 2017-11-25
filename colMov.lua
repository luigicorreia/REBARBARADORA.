


function _init()
playerx=64
playery=32

cls()

rectfill(0,0,8*16,4*16,0)
map(0,0,0,0,16,15)
spr(0,playerx,playery)
end


function _update()
mov()

end



function _draw()
cls()
rectfill(0,0,8*16,4*16,0)
map(0,0,0,0,16,15)
spr(0,playerx,playery)
debug()
end


function mov()
if btn(0) and col(2)==0 then playerx-=1 end

if btn(1) and col(4)==0 then playerx+=1 end

if btn(2) and col(1)==0 then playery-=1 end

if btn(3) and col(3)==0 then playery+=1 end


end

function col(check)
flagc=0

if check==1 and fget(mget(playerx/8,playery/8-0.1),0)==true then
flagc=1
end

if check==2 and fget(mget(playerx/8-0.1,playery/8),0)==true then
flagc=1
end

if check==3 and fget(mget(playerx/8,playery/8 + 1),0)==true then
flagc=1
end

if check==4 and fget(mget(playerx/8 + 1,playery/8),0)==true then
flagc=1
end

return(flagc)
end





function debug()
print(col(2),10,10,3)
print(fget(mget(playerx/8,playery/8 - 1),0),13,13,3)
end