local stack={}

function stack.switch(P)
    if not P.modeData.inZone then
        P.modeData.inZone=true
        P.modeData.zone_lines=0
        P.settings.clearFullLine=false

        -- Switch to 0G
        P.dropTimer=P.dropTimer/P.settings.dropDelay*1e99
        P.lockTimer=P.lockTimer/P.settings.lockDelay*1e99
        P.modeData.zone_dropDelay=P.settings.dropDelay
        P.modeData.zone_lockDelay=P.settings.lockDelay
        P.settings.dropDelay,P.settings.lockDelay=1e99,1e99

        BGM.set('all','highgain',.626,.26)
    else
        P.modeData.inZone=false
        P.settings.clearFullLine=true

        -- Recover gravity
        P.dropTimer=math.floor(P.dropTimer/P.settings.dropDelay*P.modeData.zone_dropDelay)
        P.lockTimer=math.floor(P.lockTimer/P.settings.lockDelay*P.modeData.zone_lockDelay)
        P.settings.dropDelay=P.modeData.zone_dropDelay
        P.settings.lockDelay=P.modeData.zone_lockDelay
        P.modeData.zone_dropDelay,P.modeData.zone_lockDelay=nil,nil

        local lines=P:getFullLines()
        if lines then
            P:clearLines(lines)
            P:freshGhost()
        end
        BGM.set('all','highgain',1,.1)
    end
end

function stack.event_afterLock(P)
    if P.modeData.inZone then
        local F=P.field
        local list={}
        local md=P.modeData
        for y=md.zone_lines+1,F:getHeight() do
            if P:isFullLine(y) then
                table.insert(list,y)
            end
        end
        for i=1,#list do
            if list[i]-(i==1 and md.zone_lines or list[i-1])>1 then
                P:cutConnection(list[i]-1)
            end
            if i==#list or list[i+1]-list[i]>1 then
                P:cutConnection(list[i])
            end
        end
        for _,y in next,list do
            if y>=md.zone_lines+1 then
                for x=1,#F._matrix[y] do
                    local C=F:getCell(x,y)
                    if C then C.color=0 end
                end
                table.insert(F._matrix,md.zone_lines+1,table.remove(F._matrix,y))
            end
            md.zone_lines=md.zone_lines+1
        end
        if #list>0 and P.sound then
            SFX.playSample('bass',34-1+md.zone_lines)
            SFX.playSample('lead',math.min(#list/4,1),34+12-1+md.zone_lines)
            if md.zone_lines>=8 then
                SFX.playSample('bass',math.min((#list-1)/3,1),34-5-1+md.zone_lines)
                if md.zone_lines>=13 then
                    SFX.playSample('lead',math.min(#list/2,1),34+19-1+md.zone_lines)
                end
            end
        end
    end
end

function stack.event_whenSuffocate(P)
    if P.modeData.inZone then
        stack.switch(P,false)
    end
end

return stack
