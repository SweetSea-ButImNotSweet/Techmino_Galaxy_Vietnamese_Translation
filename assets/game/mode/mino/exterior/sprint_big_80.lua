return {
    initialize=function()
        GAME.newPlayer(1,'mino')
        GAME.setMain(1)
        playBgm('race','base')
    end,
    settings={mino={
        fieldW=6,
        spawnH=12,
        event={
            playerInit={
                mechLib.mino.statistics.event_playerInit,
                "P:addEvent('afterClear',mechLib.mino.progress.sprint_big_80_afterClear)",
            },
            afterClear={
                mechLib.mino.statistics.event_afterClear,
                mechLib.mino.sprint.event_afterClear[80],
            },
            drawInField=mechLib.mino.sprint.event_drawInField[80],
            drawOnPlayer=mechLib.mino.sprint.event_drawOnPlayer[80],
        },
    }},
}
