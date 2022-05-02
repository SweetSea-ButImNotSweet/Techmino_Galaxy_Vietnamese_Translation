local scene={}

local act
local result
local quitTimer

function scene.enter()
    act=SCN.args[1]
    result=false
    quitTimer=0
    VCTRL.reset()
end

function scene.keyDown(key,isRep)
    if isRep then return end
    if result then return end
    if key=='escape' then
        SCN.back()
    elseif key=='backspace' then
        local L=KEYMAP:_getKeys(act)
        if L then TABLE.cut(L) end
        result=Text.setting_key_deleted
        SFX.play('beep2')
        SCN.back()
    else
        for i=1,#KEYMAP do
            if KEYMAP[i].act==act then
                for j=1,#KEYMAP do
                    local k=TABLE.find(KEYMAP[j].keys,key)
                    if k then
                        table.remove(KEYMAP[j].keys,k)
                    end
                end
                table.insert(KEYMAP[i].keys,key)
                while #KEYMAP[i].keys>=5 do
                    table.remove(KEYMAP[i].keys,1)
                end
                result=key
                SFX.play('beep1')
                break
            end
        end
    end
end

function scene.touchDown(x,y,id)
    if VCTRL.press(x,y,id) then return end
end
function scene.touchMove(x,y,_,_,id)
    VCTRL.move(x,y,id)
end
function scene.touchUp(_,_,id)
    VCTRL.release(id)
end

scene.mouseDown=scene.touchDown
function scene.mouseMove(x,y,dx,dy) scene.touchMove(x,y,dx,dy,1) end
scene.mouseUp=scene.touchUp

function scene.update(dt)
    if result then
        quitTimer=quitTimer+dt
        if quitTimer>.2 then
            SCN.back()
        end
    end
end

function scene.draw()
    FONT.set(100)
    GC.shadedPrint(Text['key_'..act],800,300,'center',4,8)
    FONT.set(60)
    GC.shadedPrint(result or Text.setting_key_pressKey,800,460,'center',2,8)
    FONT.set(35)
    GC.shadedPrint(Text.setting_key_info,800,580,'center',2,8)
    VCTRL.draw()
end

scene.widgetList={
    WIDGET.new{type='button',pos={1,0},x=-300,y=80,w=160,h=80,fontSize=60,text=CHAR.key.backspace,code=WIDGET.c_pressKey('backspace')},
    WIDGET.new{type='button',pos={1,0},x=-120,y=80,w=160,h=80,sound='back',fontSize=60,text=CHAR.icon.back,code=WIDGET.c_backScn},
}

return scene