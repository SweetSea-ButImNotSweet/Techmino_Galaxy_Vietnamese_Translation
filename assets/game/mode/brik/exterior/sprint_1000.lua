---@type Techmino.Mode
return {
    initialize=function()
        GAME.newPlayer(1,'brik')
        GAME.setMain(1)
        playBgm('race')
    end,
    settings={brik={
        event={
            afterClear={
                mechLib.brik.sprint.event_afterClear[1000],
                mechLib.brik.music.sprint_1000_afterClear,
            },
            drawInField=mechLib.brik.sprint.event_drawInField[1000],
            drawOnPlayer=mechLib.brik.sprint.event_drawOnPlayer[1000],
            gameOver=mechLib.brik.progress.sprint_1000_gameOver,
        },
    }},
}