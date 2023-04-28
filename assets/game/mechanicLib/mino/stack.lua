local floor,min=math.floor,math.min

local scale={
    'E3','F3','G3','A3',
    'B3','D4','E4','F4',
    'G4','A4','B4','D5',
    'F5','G5','A5','C6',
    'E6','G6','B6','C7',
    'E7','G7','A7','C8',
}
local lineFont={
    30,35,40,45,--1~4
    50,50,55,55,55,--5~9
    60,60,60,60,60,--10~14
    75,75,75,80,80,--15~19
    85,85,--20,21
    90,90,--22,23
    95,95,--24,25
    100,--26+
}

local stack={}

---@param fall? boolean
---@param autoquit? boolean
function stack.switch_auto(P,fall,autoquit)
    if fall==nil then fall=true end
    if autoquit==nil then autoquit=true end
    stack.switch(P)
    local setEvent=P.modeData.stack_enabled and P.addEvent or P.delEvent
    setEvent(P,'always',stack.event_always)
    setEvent(P,'afterLock',fall and stack.event_afterLock or stack.event_afterLock_noFall)
    if autoquit then setEvent(P,'whenSuffocate',stack.event_whenSuffocate) end
    setEvent(P,'drawOnPlayer',stack.event_drawOnPlayer)
end
function stack.switch(P)
    local md=P.modeData
    if not md.stack_enabled then
        md.stack_enabled=true
        md.stack_lines=0
        md.stack_highestLine=0
        md.stack_lineList={}-- For no-fall mode
        md.stackTextHeight=0
        md._stackTextHeight=false-- For line number animation

        P.settings.clearFullLine=false

        -- Switch to 0G
        P.dropTimer=P.dropTimer/P.settings.dropDelay*1e99
        P.lockTimer=P.lockTimer/P.settings.lockDelay*1e99
        md.stack_dropDelay=P.settings.dropDelay
        md.stack_lockDelay=P.settings.lockDelay
        P.settings.dropDelay,P.settings.lockDelay=1e99,1e99

        BGM.set('all','highgain',.626,.26)
    else
        if md.stack_lines>0 then
            P:say{
                text=tostring(md.stack_lines),
                y=md._stackTextHeight or md.stackTextHeight,
                size=min(lineFont[min(md.stack_lines,26)]*2,100),
                duration=min(md.stack_lines^.5*.626,3),
                type='bold',
                style='zoomout',
                styleArg=.626,
            }
        end
        local lines=P:getFullLines()
        if lines then
            P:clearLines(lines)
            P:freshGhost()
        end

        md.stack_enabled=false
        md.stack_lines=false
        md.stack_highestLine=false
        md.stack_lineList=false
        md._stackTextHeight,md.stackTextHeight=false,false

        P.settings.clearFullLine=true

        -- Recover gravity
        P.dropTimer=floor(P.dropTimer/P.settings.dropDelay*md.stack_dropDelay)
        P.lockTimer=floor(P.lockTimer/P.settings.lockDelay*md.stack_lockDelay)
        P.settings.dropDelay=md.stack_dropDelay
        P.settings.lockDelay=md.stack_lockDelay
        md.stack_dropDelay,md.stack_lockDelay=nil,nil

        BGM.set('all','highgain',1,.1)
    end
end

local expApproach=MATH.expApproach
function stack.event_always(P)
    local md=P.modeData
    if md.stack_enabled and md._stackTextHeight then
        md._stackTextHeight=expApproach(md._stackTextHeight,md.stackTextHeight,.00626)
    end
end

function stack.event_afterLock(P)
    if P.modeData.stack_enabled then
        local F=P.field
        local list={}
        local md=P.modeData
        for y=md.stack_lines+1,F:getHeight() do
            if P:isFullLine(y) then
                table.insert(list,y)
            end
        end
        for i=1,#list do
            if list[i]-(i==1 and md.stack_lines or list[i-1])>1 then
                P:cutConnection(list[i]-1)
            end
            if i==#list or list[i+1]-list[i]>1 then
                P:cutConnection(list[i])
            end
        end
        for _,y in next,list do
            if y>=md.stack_lines+1 then
                for x=1,#F._matrix[y] do
                    local C=F:getCell(x,y)
                    if C then C.color=0 end
                end
                table.insert(F._matrix,md.stack_lines+1,table.remove(F._matrix,y))
            end
            md.stack_lines=md.stack_lines+1
            md.stack_highestLine=md.stack_highestLine+1
            md.stackTextHeight=400-(md.stack_highestLine+.5)*(400/P.settings.fieldW)/2
            if not md._stackTextHeight then md._stackTextHeight=md.stackTextHeight end
            SFX.playSample('bass',min((20-md.stack_lines)/10,1),scale[md.stack_lines])
            SFX.playSample('lead',min(md.stack_lines/10,1),scale[md.stack_lines])
            -- or 9.5-tone scale
        end
    end
end
function stack.event_afterLock_noFall(P)
    if P.modeData.stack_enabled then
        local F=P.field
        local list={}
        local md=P.modeData
        for y=1,F:getHeight() do
            if not md.stack_lineList[y] and P:isFullLine(y) then
                table.insert(list,y)
                md.stack_lineList[y]=true
                if y>md.stack_highestLine then
                    md.stack_highestLine=y
                    md.stackTextHeight=400-(md.stack_highestLine+.5)*(400/P.settings.fieldW)/2
                    if not md._stackTextHeight then md._stackTextHeight=md.stackTextHeight end
                end
            end
        end
        for _,y in next,list do
            if y>=md.stack_lines+1 then
                for x=1,#F._matrix[y] do
                    local C=F:getCell(x,y)
                    if C then C.color=0 end
                end
            end
            md.stack_lines=md.stack_lines+1
            SFX.playSample('bass',(20-md.stack_lines)/10,scale[md.stack_lines])
            SFX.playSample('lead',min(md.stack_lines/10,1),scale[md.stack_lines])
        end
    end
end

function stack.event_whenSuffocate(P)
    if P.modeData.stack_enabled then
        stack.switch(P,false)
    end
end

function stack.event_drawOnPlayer(P)
    local md=P.modeData
    if md.stack_enabled and md.stack_lines>0 then
        GC.push('transform')
        GC.translate(0,md._stackTextHeight)
        GC.scale(2)
        local fontSize=lineFont[min(md.stack_lines,26)]
        FONT.set(fontSize,'bold')
        GC.shadedPrint(md.stack_lines,0,-fontSize*.5,'center',2,8,COLOR.lD,COLOR.L)
        GC.pop()
    end
end

return stack
