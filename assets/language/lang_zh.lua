---@class Techmino.I18N
local L={
    -- Info
    sureText={
        back="再按一次返回",
        quit="再按一次退出",
        reset="再按一次重置",
        enter="再按一次进入",
    },
    setting_needRestart="该设置需要重启后生效",
    noMode="无法加载模式 '$1': $2",
    interior_crash="沙箱意外退出:性能评分越界",
    booting_changed="引导程序已更改",
    musicroom_lowVolume="请调高音乐音量（开关在右下角）",
    bgm_collected="收集到音乐: $1",
    autoGC="[Auto GC] 设备内存过低",
    batteryWarn={
        "回见!",
        "电池耗尽，注意弹窗",
        "电量不足，请尽快充电",
        "电量不充足，可能影响性能",
    },

    -- In-Game
    clearName={
        "Single",
        "Double",
        "Triple",
        "Techrash",
        "Pentacrash",
        "Hexacrash",
        "Heptacrash",
        "Octacrash",
        "Nonacrash",
        "Decacrash",
        "Undecacrash",
        "Dodecacrash",
        "Tridecacrash",
        "Tetradecacrash",
        "Pentadecacrash",
        "Hexadecacrash",
        "Heptadecacrash",
        "Octadecacrash",
        "Nonadecacrash",
        "Ultracrash",
        "Impossicrash",
    },
    clearLines="$1 Lines",

    combo_small="$1 Combo",
    combo_large="$1 Combo!",
    mega_combo="MEGACMB",

    charge="CHG",
    spin='$1-spin',

    allClear='ALL CLEAR',
    halfClear='Half Clear',

    target_piece="块数",
    target_line="行数",
    target_key="按键数",
    target_time="时间",
    target_score="分数",
    target_combo="连击",
    target_ac="全消",
    target_hc="半全消",
    target_tss="TSS",
    target_tsd="TSD",
    target_tst="TST",
    target_tsq="TS?",
    target_tspin="T-Spin",
    target_techrash="消四",
    target_wave="波数",

    -- About-Game
    pause="暂停",

    goal_reached="要求已达成",

    -- Widget texts
    button_back="返回",

    simulation_title="模拟",
    graph_brik_title="M-图谱", -- 翻译注意：取自“知识图谱”(人工智能领域)
    settings_title="设置",

    setting_asd="重复移动延迟",
    setting_asp="重复移动周期",
    setting_adp="重复下落周期",
    setting_ash="重复移动阻止",
    setting_softdropSkipAsd="跳过软降延迟",
    setting_shakeness="场地晃动",
    setting_hitWavePower="冲击波强度",

    setting_mainVol="主音量",
    setting_bgm="音乐",
    setting_sfx="音效",
    setting_vib="振动",
    setting_handling="控制参数...",
    setting_keymapping="键位绑定...",
    setting_enableTouching="启用触屏控制",
    setting_touching="触屏控制...",
    setting_test="测试",
    setting_tryTestInGame="不能在游戏中途测试",
    setting_tryApplyAudioInGame="不能在游戏中途应用",

    setting_sysCursor="使用外部光标",
    setting_clickFX="点击动画",
    setting_power="终端状态",
    setting_clean="显存回收加速",
    setting_fullscreen="全屏",
    setting_portrait="竖屏",
    setting_autoMute="闲时静音",
    setting_showTouch="显示触摸位置",

    setting_maxFPS="最大帧数",
    setting_updRate="更新比率",
    setting_drawRate="绘制比率",
    setting_msaa="抗锯齿",
    setting_fmod_maxChannel="最大音频数",
    setting_fmod_DSPBufferCount="DSP缓冲区数量",
    setting_fmod_DSPBufferLength="DSP缓冲区长度",
    setting_apply="应用",

    lang_note="原始语言只有中文和英文\n翻译由志愿者贡献，不保证100%准确\n部分术语可能没有翻译，请查阅词典获取更多信息",

    keyset_title="键位绑定",
    keyset_brik_moveLeft=   "左移",
    keyset_brik_moveRight=  "右移",
    keyset_brik_rotateCW=   "顺时针旋转",
    keyset_brik_rotateCCW=  "逆时针旋转",
    keyset_brik_rotate180=  "180°旋转",
    keyset_brik_softDrop=   "软降",
    keyset_brik_hardDrop=   "硬降",
    keyset_brik_holdPiece=  "暂存",
    keyset_brik_skip=       "跳过",

    keyset_gela_moveLeft=   "左移",
    keyset_gela_moveRight=  "右移",
    keyset_gela_rotateCW=   "顺时针旋转",
    keyset_gela_rotateCCW=  "逆时针旋转",
    keyset_gela_rotate180=  "180°旋转",
    keyset_gela_softDrop=   "软降",
    keyset_gela_hardDrop=   "硬降",
    keyset_gela_skip=       "跳过",

    keyset_acry_swapLeft=    "向左换",
    keyset_acry_swapRight=   "向右换",
    keyset_acry_swapUp=      "向上换",
    keyset_acry_swapDown=    "向下换",
    keyset_acry_twistCW=     "顺时针旋转",
    keyset_acry_twistCCW=    "逆时针旋转",
    keyset_acry_twist180=    "180°旋转",
    keyset_acry_moveLeft=    "光标左移",
    keyset_acry_moveRight=   "光标右移",
    keyset_acry_moveUp=      "光标上移",
    keyset_acry_moveDown=    "光标下移",
    keyset_acry_skip=        "跳过",

    keyset_func1= "功能 1",
    keyset_func2= "功能 2",
    keyset_func3= "功能 3",
    keyset_func4= "功能 4",
    keyset_func5= "功能 5",

    keyset_sys_view=    "视野调整",
    keyset_sys_restart= "重新开始",
    keyset_sys_chat=    "开启聊天框",
    keyset_sys_back=    "菜单返回",
    keyset_sys_quit=    "结束游戏",
    keyset_sys_setting= "菜单设置",
    keyset_sys_help=    "快速帮助",
    keyset_sys_up=      "菜单上",
    keyset_sys_down=    "菜单下",
    keyset_sys_left=    "菜单左",
    keyset_sys_right=   "菜单右",
    keyset_sys_select=  "菜单确定",

    keyset_pressKey="按下要设置的键",
    keyset_deleted= "*已删除*",
    keyset_info=    "[Esc]: 取消\n[Backspace]: 删除\n[Double Esc]: 设置为Esc",

    stick2_switch="2向摇杆",
    stick4_switch="4向摇杆",
    setting_touch_button="增减虚拟按键",
    setting_touch_buttonSize="按键尺寸",
    setting_touch_buttonShape="更改形状",
    setting_touch_iconSize="图标尺寸",
    setting_touch_stickSize="摇杆尺寸",
    setting_touch_ballSize="摇把尺寸",

    main_in_dig="挖掘",
    main_in_sprint="40行",
    main_in_marathon="马拉松",
    main_in_tutorial="教程",
    main_in_sandbox="沙盒",
    main_in_settings="设置",

    main_out_settings="设置",
    main_out_stat="统计",
    main_out_dict="词典",
    main_out_lang="语言",
    main_out_about="系统信息",
    main_out_single="单机",
    main_out_multi="联机",

    musicroom_title="音乐室",
    musicroom_fullband='全频带',
    musicroom_section='副歌',
    musicroom_autoplay="自动切换",

    about_title="关于",
    about_module="模块:",
    about_toolchain="工具链:",
    about_peopleLost="你弄丢了 $1 !",

    -- Mode name
    exteriorModeInfo={
        sprint=           {"竞速","速度即一切"},
        sequence=         {"序列","面对奇异的方块序列"},
        hidden=           {"隐形","方块落下后将不可见"},
        tspin=            {"T旋","构建特殊的地形"},
        marathon=         {"马拉松","对抗逐渐增加的重力"},
        allclear=         {"全消","可控的全消并非不可能"},
        combo=            {"连击","开局送楼连到爽"},
        hypersonic=       {"超音速","打破重力的极限"},
        dig=              {"挖掘","清理整齐的垃圾行"},
        excavate=         {"发掘","解决复杂的垃圾行"},
        backfire=         {"反效","自给自足"},
        drill=            {"钻掘","处理标准的垃圾行"},
        survivor=         {"生存","在压力下生存"},

        chain=            {"连锁","同一个颜色才能消"},
        action=           {"动作","键鼠搭配更佳"},
    },

    -- Submode Task Texts
    modeTask_unknown_title="???",
    modeTask_unknown_desc="??????",

    modeTask_sequence_flood_title="Flood",
    modeTask_sequence_flood_desc="用S/Z消除",
    modeTask_sequence_drought_title="Drought",
    modeTask_sequence_drought_desc="用J/L消除",
    modeTask_sequence_saw_title="Saw",
    modeTask_sequence_saw_desc="用T消除",
    modeTask_sequence_rect_title="Rect",
    modeTask_sequence_rect_desc="用O消除",
    modeTask_sequence_rain_title="Rain",
    modeTask_sequence_rain_desc="用I消除",
    modeTask_sequence_mph_title="MPH",
    modeTask_sequence_mph_desc="4块内消除",
    modeTask_sequence_pento_title="Pento",
    modeTask_sequence_pento_desc="用五连块消除",
    modeTask_sequence_unknown_desc="用？？？消除",

    modeTask_hypersonic_low_title="Low",
    modeTask_hypersonic_low_desc="消除四行",
    modeTask_hypersonic_high_title="High",
    modeTask_hypersonic_high_desc="消四",
    modeTask_hypersonic_hidden_title="Hidden",
    modeTask_hypersonic_hidden_desc="6秒内消四",
    modeTask_hypersonic_titanium_title="Titanium",
    modeTask_hypersonic_titanium_desc="10秒内消四 且 不使用暂存",

    modeTask_excavate_shale_title="Shale",
    modeTask_excavate_shale_desc="用消二-挖掘",
    modeTask_excavate_volcanics_title="Volcanics",
    modeTask_excavate_volcanics_desc="用消三+挖掘",
    modeTask_excavate_checker_title="Checker",
    modeTask_excavate_checker_desc="用隔断消除挖掘",
    modeTask_excavate_unknown_desc="用???挖掘",

    modeTask_backfire_break_title="Scattered",
    modeTask_backfire_break_desc="消除8行",
    modeTask_backfire_normal_title="Normal",
    modeTask_backfire_normal_desc="在消除6行内打出6行攻击",
    modeTask_backfire_amplify_title="Amplify",
    modeTask_backfire_amplify_desc="在消除4行内打出8行攻击",

    modeTask_survivor_scattered_title="Scattered",
    modeTask_survivor_scattered_desc="打出8行攻击",
    modeTask_survivor_power_title="Power",
    modeTask_survivor_power_desc="打出8行攻击 且 效率达到1",
    modeTask_survivor_spike_title="Spike",
    modeTask_survivor_spike_desc="打出8行攻击 且 效率达到2",

    -- Achievement
    achievementMessage={
        dict_shortcut="快捷键高手",
        exterior_excavate_notDig="你在干什么？",
        exterior_hidden_superBrain="COOL",
        exterior_tspin_10TSS="这是什么？",
        exterior_tspin_10TST="轻松。",
        exterior_hypersonic_titanium_holdless="你可以暂存的",
        interior_console="这是什么？",
        language_japanese="あ?",
        musicroom_recollection="Recollection不是一首曲子",
        dial_enter="乐器？",
        dial_password="密码正确",
        menu_fastype="看起来你很喜欢打字",
    },

    -- Tutorial levels
    tutorial_basic="1.基本规则",
    tutorial_sequence="2.预览&暂存",
    tutorial_stackBasic="3.基础堆叠",
    tutorial_finesseBasic="4.基础极简",
    tutorial_finessePractice="5.极简练习",
    tutorial_allclearPractice="6.全消练习",
    tutorial_techrashPractice="7.消四练习",
    tutorial_finessePlus="8.优雅操作",

    tutorial_notpass="Failed",
    tutorial_pass="PASS",

    tutorial_basic_1="欢迎来到Techmino",
    tutorial_basic_2="1.基本规则",
    tutorial_basic_3="用左/右键移动当前方块",
    tutorial_basic_4="按下硬降键放置方块，满行消除",
    tutorial_basic_5="你也可以旋转当前方块",

    tutorial_sequence_1="2.预览&暂存",
    tutorial_sequence_2="哎呀 这个块的形状和坑对不上",
    tutorial_sequence_3="现在你可以看到之后会来什么块了",
    tutorial_sequence_4="使用暂存键来调整方块的顺序",

    tutorial_stackBasic_1="3.基础堆叠",
    tutorial_stackBasic_2="请尝试保持“地形平坦”，不要让左侧的危险度指示条过高",
    tutorial_stackBasic_3="初学时一般都推荐以此为目标",
    tutorial_stackBasic_4="所以方块通常会尽量摆成平躺的方向，很少竖着",
    tutorial_stackBasic_5="这能保证后续的选择空间，实现可持续发展",

    tutorial_finesseBasic_0="4.基础极简",
    tutorial_finesseBasic_0_1="“极简”是一套减少按键数的操作方法，能节约时间和减少误操作",
    tutorial_finesseBasic_1="①双旋",
    tutorial_finesseBasic_1_1="逆时针转一次可以代替顺时针转三次，所以请绑定两个用来旋转的按键",
    tutorial_finesseBasic_1_T="180°旋转在此不强制要求，仅供选用",
    tutorial_finesseBasic_1_2="练习：请旋转每个方块一次，然后将其放到提示位置",
    tutorial_finesseBasic_2="②折返",
    tutorial_finesseBasic_2_1="因为场地的总宽度为10，方块的宽度在3格左右且生成在中间，所以将场地划为左/中/右三个区域",
    tutorial_finesseBasic_2_2="落点在中间附近就只需要单点移动键微调，在两边就先长按移动键到墙然后微调",
    tutorial_finesseBasic_2_3="所以只需要“移动一格”和“移动到底”两种操作，也就是单点/长按",
    tutorial_finesseBasic_2_T="所以ASD调成能区分单点/长按的最小值，ASP尽量快（0）",
    tutorial_finesseBasic_2_4="练习：请只移动两次，将方块放到提示位置",
    tutorial_finesseBasic_3="③撞墙转",
    tutorial_finesseBasic_3_1="方块的旋转是绕旋转中心（白点）进行的",
    tutorial_finesseBasic_3_2="对于三种方块：Z(红)/S(绿)/I(青)，顺(逆)时针的旋转会让方块偏向右(左)侧",
    tutorial_finesseBasic_3_3="练习：请只移动一次+旋转一次，将方块放到提示位置",
    tutorial_finesseBasic_4_1="灵活组合双旋、折返、撞墙转三种方法",
    tutorial_finesseBasic_4_2="三次左右按键就可以把块放到任何位置",

    tutorial_finessePractice_1="5.极简练习",
    tutorial_finessePractice_2="减少按键次数",
    tutorial_finessePractice_par="标准步数",

    tutorial_allclearPractice_1="6.全消练习",
    tutorial_allclearPractice_2="尽可能做全消",

    tutorial_techrashPractice_1="7.消四练习",
    tutorial_techrashPractice_2="尽可能做消四",

    tutorial_finessePlus_1="8.优雅操作",
    tutorial_finessePlus_2="尽可能少按键",
}
return L
