local scene={}

local function sliderShow_time(S) return S.disp().." ms"  end

scene.widgetList={
    -- Handling
    WIDGET.new{type='slider',     pos={0,0},x=260, y=100,w=1000, text=LANG'setting_das',       labelDistance=20,widthLimit=260,axis={0,260,1},smooth=true, disp=TABLE.func_getVal(SETTINGS.game_puyo,'das'),        valueShow=sliderShow_time, code=TABLE.func_setVal(SETTINGS.game_puyo,'das')},
    WIDGET.new{type='slider',     pos={0,0},x=260, y=180,w=1000, text=LANG'setting_arr',       labelDistance=20,widthLimit=260,axis={0,120,1},smooth=true, disp=TABLE.func_getVal(SETTINGS.game_puyo,'arr'),        valueShow=sliderShow_time, code=TABLE.func_setVal(SETTINGS.game_puyo,'arr')},
    WIDGET.new{type='slider',     pos={0,0},x=260, y=260,w=1000, text=LANG'setting_sdarr',     labelDistance=20,widthLimit=260,axis={0,100,1},smooth=true, disp=TABLE.func_getVal(SETTINGS.game_puyo,'sdarr'),      valueShow=sliderShow_time, code=TABLE.func_setVal(SETTINGS.game_puyo,'sdarr')},
    WIDGET.new{type='slider',     pos={0,0},x=260, y=340,w=1000, text=LANG'setting_dascut',    labelDistance=20,widthLimit=260,axis={0,100,1},smooth=true, disp=TABLE.func_getVal(SETTINGS.game_puyo,'dascut'),     valueShow=sliderShow_time, code=TABLE.func_setVal(SETTINGS.game_puyo,'dascut')},

    -- Video
    WIDGET.new{type='slider_fill',pos={0,0},x=260, y=420,w=500,h=30,  text=LANG'setting_shakeness', labelDistance=20,widthLimit=260,axis={0,1},                 disp=TABLE.func_getVal(SETTINGS.game_puyo,'shakeness'),                             code=TABLE.func_setVal(SETTINGS.game_puyo,'shakeness')},

    -- Key setting & Test
    WIDGET.new{type='button',     pos={0,1},x=160,y=-80,w=160,h=80,   text=CHAR.key.keyboard,fontSize=60,code=function() SCN.go('keyset_list',nil,'puyo') end},
    WIDGET.new{type='button',     pos={0,1},x=340,y=-80,w=160,h=80,   text=LANG'keyset_touch',fontSize=45,code=WIDGET.c_goScn'keyset_touch'},
    WIDGET.new{type='checkBox',   pos={0,1},x=460,y=-80,w=50,         text='',disp=TABLE.func_getVal(SETTINGS.system,'touchControl'),code=TABLE.func_revVal(SETTINGS.system,'touchControl')},
    WIDGET.new{type='button',     pos={1,1},x=-300,y=-80,w=160,h=80,  text=LANG'keyset_test',fontSize=45,code=function() SCN.go('game_simp',nil,'puyo_test') end},

    WIDGET.new{type='button',pos={1,1},x=-120,y=-80,w=160,h=80,sound='back',fontSize=60,text=CHAR.icon.back,code=WIDGET.c_backScn},
}
return scene
