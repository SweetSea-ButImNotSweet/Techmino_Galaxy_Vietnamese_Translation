local gc=love.graphics
local levels={
    {drop=1000,lock=1000,spawn=150, par=999},
    {drop=730, lock=1000,spawn=150, par=909},
    {drop=533, lock=1000,spawn=150, par=833},
    {drop=389, lock=1000,spawn=150, par=714},
    {drop=284, lock=1000,spawn=150, par=666},
    {drop=207, lock=800 ,spawn=130, par=625},
    {drop=151, lock=800 ,spawn=130, par=588},
    {drop=110, lock=800 ,spawn=130, par=555},
    {drop=81,  lock=800 ,spawn=130, par=526},
    {drop=59,  lock=800 ,spawn=130, par=500},
    {drop=43,  lock=700 ,spawn=110, par=454},
    {drop=31,  lock=700 ,spawn=110, par=416},
    {drop=23,  lock=700 ,spawn=110, par=384},
    {drop=17,  lock=700 ,spawn=110, par=357},
    {drop=12,  lock=700 ,spawn=110, par=333},
    {drop=9,   lock=600 ,spawn=90,  par=312},
    {drop=7,   lock=600 ,spawn=90,  par=294},
    {drop=5,   lock=600 ,spawn=90,  par=277},
    {drop=3,   lock=600 ,spawn=90,  par=263},
    {drop=2,   lock=600 ,spawn=90,  par=250},
    {drop=0,   lock=590 ,spawn=75,  par=238},
    {drop=0,   lock=580 ,spawn=75,  par=227},
    {drop=0,   lock=570 ,spawn=75,  par=217},
    {drop=0,   lock=560 ,spawn=75,  par=200},
    {drop=0,   lock=550 ,spawn=75,  par=185},
    {drop=0,   lock=540 ,spawn=70,  par=172},
    {drop=0,   lock=530 ,spawn=70,  par=161},
    {drop=0,   lock=520 ,spawn=70,  par=147},
    {drop=0,   lock=510 ,spawn=70,  par=142},
    {drop=0,   lock=500 ,spawn=70,  par=133},
}

return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.setMain(1)
        playBgm('propel','base')
    end,
    settings={mino={
        spawnDelay=130,
        clearDelay=300,
        event={
            playerInit=function(P)
                P.settings.das=math.max(P.settings.das,100)
                P.settings.arr=math.max(P.settings.arr,20)
                P.settings.sdarr=math.max(P.settings.sdarr,20)

                P.settings.dropDelay=levels[1].drop
                P.settings.lockDelay=levels[1].lock
                P.settings.spawnDelay=levels[1].spawn

                P.modeData.transition1=1e99
                P.modeData.transition2=1e99
                P.modeData.line=0
                P.modeData.target=10

                P.modeData.level=1
                P.modeData.levelStartTime=0
                P.modeData.levelPieces=0
            end,
            afterLock=function(P)
                P.modeData.levelPieces=P.modeData.levelPieces+1
            end,
            afterClear=function(P)
                local md=P.modeData
                md.line=math.min(md.line+P.clearHistory[#P.clearHistory].line,200)
                while md.line>=md.target do
                    if md.target<200 then
                        local autoLevel=md.level
                        local averageDropTime=(P.gameTime-md.levelStartTime-P.settings.clearDelay*3)/md.levelPieces-P.settings.spawnDelay
                        while averageDropTime<levels[autoLevel].par and autoLevel<30 do
                            autoLevel=autoLevel+1
                        end
                        local _level=md.level
                        md.level=math.min(math.max(md.level+1,math.min(md.level+3,autoLevel)),30)
                        if _level<=10 and md.level>10 then
                            md.transition1=#P.dropHistory
                        elseif _level<=20 and md.level>20 then
                            md.transition2=#P.dropHistory
                        end

                        P.settings.dropDelay=levels[md.level].drop
                        P.settings.lockDelay=levels[md.level].lock
                        P.settings.spawnDelay=levels[md.level].spawn

                        md.target=md.target+10
                        md.levelPieces=0
                        md.levelStartTime=P.gameTime

                        if P.isMain then
                            BGM.set(bgmList['propel'].add,'volume',math.min(md.level/15,1)^2)
                        end
                        P:playSound('reach')
                    else
                        P:finish('AC')
                        return
                    end
                end
            end,
            drawOnPlayer=function(P)
                P:drawInfoPanel(-380,-85,160,200)

                FONT.set(70)
                GC.mStr(P.modeData.line,-300,-90)
                gc.rectangle('fill',-375,-2,150,4)
                GC.mStr(P.modeData.target,-300,-5)
                FONT.set(30,'bold')
                gc.setColor(P.modeData.level<=10 and COLOR.G or P.modeData.level<=20 and COLOR.Y or COLOR.R)
                GC.mStr(P.modeData.level,-300,70)
            end,
            whenSuffocate=mechLib.mino.stack.event_whenSuffocate,
        },
    }},
    result=function()
        local P=GAME.mainPlayer
        if not P then return end
        if P.modeData.line<40 then return end

        local dropInfo={}

        local finalTime=P.time-3000

        for i,d in next,P.dropHistory do
            table.insert(dropInfo,{
                x=(d.time-3000)/finalTime,
                y=i/#P.dropHistory,
            })
        end

        P.modeData.finalTime=finalTime
        P.modeData.dropInfo=dropInfo
    end,
    resultPage=function(time)
        local P=GAME.mainPlayer
        if not P then return end
        if not P.modeData.finalTime then
            FONT.set(100)
            GC.setColor(1,1,1,math.min(time*2.6,1))
            GC.mStr(P.modeData.line.." / 200",800,400)
            return
        end

        local t=MATH.expApproach(0,1,time^2*26)
        local maxH=600*MATH.expApproach(0,1,math.max(time-.26,0)^2*12.6)

        -- Set axis' trasformation
        GC.translate(400,800)
        GC.scale(1,-1)

        -- Piece-time
        local dropData=P.modeData.dropInfo
        lastX,lastY=0,0
        for i=1,#dropData do
            local clr=i>P.modeData.transition2 and COLOR.R or i>P.modeData.transition1 and COLOR.Y or COLOR.G
            -- Fill
            GC.setColor(clr[1],clr[2],clr[3],.6)
            GC.polygon('fill',
                800*t*lastX,0,
                800*t*lastX,lastY*maxH,
                800*t*dropData[i].x,dropData[i].y*maxH,
                800*t*dropData[i].x,0
            )
            -- Line
            GC.setLineWidth(2)
            GC.setColor(clr)
            GC.line(
                800*t*lastX,lastY*maxH,
                800*t*dropData[i].x,dropData[i].y*maxH
            )
            lastX,lastY=dropData[i].x,dropData[i].y
        end

        -- Axis
        GC.setLineWidth(2)
        GC.setColor(COLOR.dL)
        GC.line(0,600*t,0,0,800*t,0)
        FONT.set(30)
        GC.setColor(1,1,1,t)
        GC.printf(STRING.time(P.modeData.finalTime/1000),800*t-260,-10,260,'right',nil,1,-1)
    end,
}
