--[[
    If you want to contribute translations, play and unlock "Exterior" chapter first
    Try keeping all language files have same line count, will make translators easier to find what's missing
    You can check if there are missing strings by "Ctrl + [Pick a Language]"
    Don't ignore the "TRASLATING NOTE" mark, it's necessary to be accurate because there's lore
    Ask MrZ for more information if you cannot fully understand the text, don't worry about disturbing me!
]]
---@class Techmino.I18N
local L={
    -- Info
    sureText={
        back="Premu denove por reiri",
        quit="Premu denove por eliri",
        reset="Premu denove por rekomenci",
        enter="Premu denove por ensaluti",
    },
    setting_needRestart="Tiu ĉi agordo efektiviĝos post recomenco.",
    noMode="Ne eblas ŝargi reĝimon '$1': $2",
    interior_crash="Sablokesto finiĝis pro rendimento-indico superfluo",
    booting_changed="Komenca aplikaĵo sukcese modifita",
    musicroom_lowVolume="Bonvolu altigu la volumon de la muziko (malsupre dekstre)",
    bgm_collected="Kolektita muziko: $1",
    autoGC="[Auto GC] Malsufiĉa memoro",
    batteryWarn={
        "Baldaŭ!",
        "Malalta kuirilaro, ŝprucfenestro eble aperos baldaŭ.",
        "Malalta kuirilaro, bonvolu ŝarĝi vian aparaton",
        "La aparato havas nesufiĉan potencon kaj povas influi rendimenton",
    },

    -- In-Game
    clearName={
        "Unuopulo",
        "Duoblo",
        "Trioblo",
        "Tech-erupcio",
        "Pentakraŝo",
        "Esakraŝo",
        "Septakraŝo",
        "Octakraŝo",
        "Naŭakraŝo",
        "Dekakraŝo",
        "Dekunuakraŝo",
        "Dekduakraŝo",
        "Dektrikraŝo",
        "Dekkvarkraŝo",
        "Dekkvinkraŝo",
        "Deksesakraŝo",
        "Deksepakraŝo",
        "Dekokakraŝo",
        "Deknaŭakraŝo",
        "Ultrakraŝo",
        "Neeblakraŝo",
    },
    clearLines="$1 Linioj",

    combo_small="$1 Kombo",
    combo_large="$1 Kombo!",
    mega_combo="MEGACMB",

    charge="CHG",
    spin="$1-spin",

    allClear="ĈIO KLARA",
    halfClear="Duone Klara",

    target_piece="Tetramino",
    target_line="Linio",
    target_key="Butono",
    target_time="Tempo",
    target_score="Poentaro",
    target_combo="Kombo",
    target_ac="AC",
    target_hc="HC",
    target_tss="TSS",
    target_tsd="TSD",
    target_tst="TST",
    target_tsq="TS?",
    target_tspin="T-Spin",
    target_techrash="Tech-erupcio",
    target_wave="Ondo",

    -- About-Game
    pause="Paŭzo",

    goal_reached="Atingita objektivo",

    -- Widget texts
    button_back="Malantaŭe",

    simulation_title="Simulaĵoj",
    graph_brik_title="M-Grafiko", -- TRASLATING NOTE: from "Knowledge Graph" (AI domain)
    settings_title="Agordoj",

    setting_asd="ASD",
    setting_asp="ASP",
    setting_adp="ADP",
    setting_ash="AS Halt",
    setting_softdropSkipAsd="Skip Drop Prokrasto",
    setting_shakeness="Tremo",
    setting_hitWavePower="Hitwave Potenco",

    setting_mainVol="Ĉefa volumo",
    setting_bgm="Muziko",
    setting_sfx="Sonefektoj",
    setting_vib="Vibroj",
    setting_handling="Manovreblo…",
    setting_keymapping="Kontroloj…",
    setting_enableTouching="Ebligu tuŝajn kontrolojn",
    setting_touching="Tuŝajn kontrolojn…",
    setting_test="Testo",
    setting_tryTestInGame="Neeble testi dum la matĉo",
    setting_tryApplyAudioInGame="Neeble apliki dum la matĉo",

    setting_sysCursor="Ekstera kursoro",
    setting_clickFX="Click FX",
    setting_power="Fina stato",
    setting_clean="VRAM-akcelo",
    setting_fullscreen="Plena ekrano",
    setting_portrait="Portreto",
    setting_autoMute="Silentas kiam la fenestro ne estas fokusita",
    setting_showTouch="Montru tuŝajn kontrolojn",

    setting_maxFPS=">Maksimuma FPS",
    setting_updRate="Update Rate",
    setting_drawRate="rapido de ĝisdatigo",
    setting_msaa="MSAA",
    setting_fmod_maxChannel="Maksimumaj kanaloj",
    setting_fmod_DSPBufferCount="DSPBufferCount",
    setting_fmod_DSPBufferLength="DSPBufferLength",
    setting_apply="Apliki",

    lang_note="La originalaj lingvoj estas la ĉina kaj la angla.\nĈiuj tradukoj estas provizitaj de volontuloj kaj eble ne estas 100% precizaj\nEstas kelkaj terminoj ne rekte tradukitaj, kontrolu la Zictionarion por pliaj informoj",

    keyset_title="Controlli",
    keyset_brik_moveLeft=   "Movas Maldekstren",
    keyset_brik_moveRight=  "Movas Dekstren",
    keyset_brik_rotateCW=   "Turniĝas Horloĝe",
    keyset_brik_rotateCCW=  "Turniĝas Kontraŭhorloĝe",
    keyset_brik_rotate180=  "Turniĝas 180 Gradojn",
    keyset_brik_softDrop=   "Malpeza Liberigo",
    keyset_brik_hardDrop=   "Peza Liberigo",
    keyset_brik_holdPiece=  "Rezervo",
    keyset_brik_skip=       "Saltas",

    keyset_gela_moveLeft=   "Movas Maldekstren",
    keyset_gela_moveRight=  "Movas Dekstren",
    keyset_gela_rotateCW=   "Turniĝas Horloĝe",
    keyset_gela_rotateCCW=  "Turniĝas Kontraŭhorloĝe",
    keyset_gela_rotate180=  "Turniĝas 180 Gradojn",
    keyset_gela_softDrop=   "Malpeza Liberigo",
    keyset_gela_hardDrop=   "Peza Liberigo",
    keyset_gela_skip=       "Saltas",

    keyset_acry_swapLeft=    "Interŝanĝas Maldekstren",
    keyset_acry_swapRight=   "Interŝanĝas Dekstren",
    keyset_acry_swapUp=      "Interŝanĝas Supren",
    keyset_acry_swapDown=    "Interŝanĝas Malsupren",
    keyset_acry_twistCW=     "Turniĝas Horloĝe",
    keyset_acry_twistCCW=    "Turniĝas Kontraŭhorloĝe",
    keyset_acry_twist180=    "Turniĝas 180 Gradojn",
    keyset_acry_moveLeft=    "Kursoro (Sinistra)",
    keyset_acry_moveRight=   "Kursoro (Destra)",
    keyset_acry_moveUp=      "Kursoro (Su)",
    keyset_acry_moveDown=    "Kursoro (Giù)",
    keyset_acry_skip=        "Saltas",

    keyset_func1= "Funkcio 1",
    keyset_func2= "Funkcio 2",
    keyset_func3= "Funkcio 3",
    keyset_func4= "Funkcio 4",
    keyset_func5= "Funkcio 5",

    keyset_sys_view=    "Rigardu",
    keyset_sys_restart= "Rekomencu",
    keyset_sys_chat=    "Babilado",
    keyset_sys_back=    "Ĉefa menuo",
    keyset_sys_quit=    "Finas ludon",
    keyset_sys_setting= "Agordoj",
    keyset_sys_help=    "Rapida helpo",
    keyset_sys_up=      "Supre",
    keyset_sys_down=    "Malsupre",
    keyset_sys_left=    "Maldekstre",
    keyset_sys_right=   "Dekstre",
    keyset_sys_select=  "Selektu",

    keyset_pressKey="Premu butono",
    keyset_deleted= "*Eliminita*",
    keyset_info=    "[Esc]: nuligu\n[Backspace]: eliminu\n[Duobla Esc]: agordu al Esc",

    stick2_switch="2-direkta stirstango",
    stick4_switch="4-direkta stirstango",
    setting_touch_button="Butonon aldonas/forigas",
    setting_touch_buttonSize="Pulsanta grandeco",
    setting_touch_iconSize="Ikona grandeco",
    setting_touch_buttonShape="Ŝanĝas butonformon",
    setting_touch_stickSize="Longo de la analogan bastonon",
    setting_touch_ballSize="Grandeco de la analogan bastonon",

    main_in_dig="Fosas",
    main_in_sprint="Sprinto (40 Linioj)",
    main_in_marathon="Maratono",
    main_in_tutorial="Lernilo",
    main_in_sandbox="Sablokesto",
    main_in_settings="Agordoj",

    main_out_settings="Agordoj",
    main_out_stat="Statistikoj",
    main_out_dict="Vortaro",
    main_out_lang="Lingvo",
    main_out_about="Sistema informo",
    main_out_single="Ununuro",
    main_out_multi="Multoblaj",

    musicroom_title="Muzika ĉambro",
    musicroom_fullband="Plena Bando",
    musicroom_section='Koruso',
    musicroom_autoplay="Aŭtomata kantoŝanĝo",

    about_title="Informo",
    about_module="Moduloj:",
    about_toolchain="Uzitaj instrumentoj:",
    about_peopleLost="Vi perdis $1 !",

    -- Mode name
    exteriorModeInfo={ -- TRASLATING NOTE: Unnecessary to be accurate, try to quote some short proverbs in your language
        sprint=           {"Sprinto","La rapideco estas ĉio, kion vi bezonas"},
        sequence=         {"Sinsekvo","Alfrontu strangajn tetrominsinsekvojn"},
        invis=           {"Nevidebla","tuj kiam ili estas metitaj, la pecoj fariĝas nevideblaj"},
        tspin=            {"T-Spin","Konstruas specialajn scenarojn"},
        marathon=         {"Maratono","Rezistu kontraŭ kreskanta gravito"},
        allclear=         {"All Clear","Kontrolitaj All-Clear estas eblaj"},
        combo=            {"Kombo","Ĉiuj amas la komboj"},
        hypersonic=       {"Hipersona","Venku la gravita limoj"},
        dig=              {"Fosi 1","Administru malŝparajn liniojn (facile)"},
        excavate=         {"Fosi 2","Administru malŝparajn liniojn (malfacile)"},
        backfire=         {"Miskarburo","Batalu kontraŭ vi mem!"},
        drill=            {"Borilo","Administru normajn malŝparajn liniojn"},
        survivor=         {"Pluvivante","Pluvivas sub premo"},

        chain=            {"Ĉeno","Kompletu linioj kun la sama koloro"},
        action=           {"Ago","Uzu la klavaron kaj muson samtempe"},
    },

    -- Submode Task Texts
    modeTask_unknown_title="???",
    modeTask_unknown_desc="??????",

    modeTask_sequence_flood_title="Lavango",
    modeTask_sequence_flood_desc="Kompletu 1 linion per S aŭ Z",
    modeTask_sequence_drought_title="Karenco",
    modeTask_sequence_drought_desc="Kompletu 1 linion per S aŭ Z",
    modeTask_sequence_saw_title="Segilo",
    modeTask_sequence_saw_desc="Kompletu 1 linion per T",
    modeTask_sequence_rect_title="Rekto",
    modeTask_sequence_rect_desc="Kompletu 1 linion per O",
    modeTask_sequence_rain_title="Pluvo",
    modeTask_sequence_rain_desc="Kompletu 1 linion per I",
    modeTask_sequence_mph_title="MPH",
    modeTask_sequence_mph_desc="Kompletu 1-2 liniojn per 4 pecoj",
    modeTask_sequence_pento_title="Kvino",
    modeTask_sequence_pento_desc="Kompletu 1 linion per 1 pentomino",
    modeTask_sequence_unknown_desc="Kompletu 1 linion per ???",
    
    modeTask_invis_haunted_title="Hantita",
    modeTask_invis_haunted_desc="Kompletu 4 linioj",
    modeTask_invis_hidden_title="Nevidebla",
    modeTask_invis_hidden_desc="Kompletu Tech-erupcio",

    modeTask_hypersonic_low_title="Malalta gravito",
    modeTask_hypersonic_low_desc="Kompletu 4 linioj",
    modeTask_hypersonic_high_title="Alta gravito",
    modeTask_hypersonic_high_desc="Kompletu Tech-erupcio",
    modeTask_hypersonic_hidden_title="Nevidebla",
    modeTask_hypersonic_hidden_desc="Kompletu Tech-erupcio en 6s",
    modeTask_hypersonic_titanium_title="Titano",
    modeTask_hypersonic_titanium_desc="Kompletu Tech-erupcio en 10s sen uzi la rezervo",

    modeTask_excavate_shale_title="Skisto",
    modeTask_excavate_shale_desc="Fosu per duoble-",
    modeTask_excavate_volcanics_title="Vulkanaj",
    modeTask_excavate_volcanics_desc="Fosu per Triplo+",
    modeTask_excavate_checker_title="Regilo",
    modeTask_excavate_checker_desc="Fosu dividendon",
    modeTask_excavate_unknown_desc="Fosu per ???",

    modeTask_backfire_break_title="Sparpagliato",
    modeTask_backfire_break_desc="Completa 8 linee",
    modeTask_backfire_normal_title="Normala",
    modeTask_backfire_normal_desc="Invia 6 linee completando fino a 6 linee",
    modeTask_backfire_amplify_title="Amplificato",
    modeTask_backfire_amplify_desc="Invia 8 lines completando fino a 4 lines",

    modeTask_survivor_scattered_title="Disĵetita",
    modeTask_survivor_scattered_desc="Kompletu 8 linioj",
    modeTask_survivor_power_title="Potenza",
    modeTask_survivor_power_desc="Sendu 8 linioj per 1 Eff",
    modeTask_survivor_spike_title="Harpuno",
    modeTask_survivor_spike_desc="Sendu 8 linioj per 2 Eff",

    -- Achievement
    ---@enum (key) Techmino.Text.Achievement
    achievementMessage={
        dict_shortcut="Fakulo de Hotkeys",
        exterior_sprint_gunJumping="KANONPAFO!!!",
        exterior_excavate_notDig="Kion vi faras?",
        exterior_invis_superBrain="COOL",
        exterior_invis_rhythmMaster="To the beat!", -- Keep this as it is. Original from "osu!" title music
        exterior_tspin_10TSS="Kio estas ĉi tio?",
        exterior_tspin_10TST="EZ.",
        exterior_hypersonic_holdlessTitan="Vi povas uzi la rezervo",
        interior_console="Kio estas ĉi tio?",
        language_japanese="あ?",
        musicroom_recollection="La memoro ne estas kanto",
	musicroom_piano="La piano de Neniu",
        dial_enter="Instrumento?",
        dial_password="Ĝusta pasvorto",
        menu_fastype="Ŝajnas, ke vi amuzas skribi",
    },

    -- Tutorial levels
    tutorial_basic="1. La bazoj",
    tutorial_sequence="2. Sekva peco kaj Rezervo",
    tutorial_stackBasic="3. Baza stakado",
    tutorial_finesseBasic="4. Baza fineco",
    tutorial_finessePractice="5. Praktiko Fineco",
    tutorial_allclearPractice="6. Praktiko All Clear",
    tutorial_techrashPractice="7. Praktiko Tech-Erupcio",
    tutorial_finessePlus="8. Elegantaj Movoj",

    tutorial_notpass="Vi malsukcesis",
    tutorial_pass="Vi estas promociita!",

    tutorial_basic_1="Bonvenon al Techmino!",
    tutorial_basic_2="1. La bazoj",
    tutorial_basic_3="Uzu la maldekstra kaj dekstra butonoj por movi la pecojn",
    tutorial_basic_4="Premu la malmola guto butonon por meti la peco, kompletigante la liniojn",
    tutorial_basic_5="Vi povas ankaŭ roti la pecon kun la rotaciaj butonoj",

    tutorial_sequence_1="2. Sekva peco kaj Rezervo",
    tutorial_sequence_2="Oops, Tiu ĉi peco ne ŝajnas eniri en la truo…",
    tutorial_sequence_3="…sed nun vi povas vidi vedere kiuj pecoj vi ricevos poste",
    tutorial_sequence_4="Uzu la rezervo por konservi la peco kiu vi povus servi poste",

    tutorial_stackBasic_1="3. Baza stakado",
    tutorial_stackBasic_2="Provu teni la grundon \"plata\", por teni malaltan la danĝermezurilon maldekstre",
    tutorial_stackBasic_3="Tiu ĉi estas la ĉefa objektivo por komencantoj",
    tutorial_stackBasic_4="Pecoj estas ofte metitaj \"horizontale\", ne  \"vertikale\"",
    tutorial_stackBasic_5="Ĉi tio certigas pli da elektoj por estontaj pecoj kaj evitas krei truojn kiuj malstabiligas la grundon",

    tutorial_finesseBasic_0="4. Baza fineco",
    tutorial_finesseBasic_0_1="La \"Fineco\" estas maniero por simpligi la butonan premon, kion povas rapidigi kaj redukti la misgutoj",
    tutorial_finesseBasic_1="①Butonoj por duobla rotacio",
    tutorial_finesseBasic_1_1="Iru al asocii ambaŭ la rotacian kontrolojn, Ekde 1 maldekstruma rotacio estas ekvivalenta al 3 dekstrumaj rotacioj",
    tutorial_finesseBasic_1_T="En tiu ĉi kazo la rotacio al 180° ne estas deviga",
    tutorial_finesseBasic_1_2="Objektivo: metu la pecon en la reliefigita pozicio turnante ĝin nur unufoje",
    tutorial_finesseBasic_2="②Bektrako",
    tutorial_finesseBasic_2_1="la tereno larĝas 10 ĉelojn, la larĝo de la peco estas è de ĉirkaŭ 3 ĉeloj kaj ĝi estas generita en la mezo",
    tutorial_finesseBasic_2_2="Poste, dividu la kampon en tri partojn: Maldekstre/Centro/Dekstre. Movu la tetromino al unu el la 3 partoj kaj metu ĝin kie estas indikite.",
    tutorial_finesseBasic_2_3="Do, ekzistas nur la du movadoj \"movi ĉelo\" kaj \"ŝanĝi flanko\".",
    tutorial_finesseBasic_2_T="Uzi kiel pli malgrandan ASD sed vi ankoraŭ povas apartigi tuŝon/premadon kaj pli malgrandan ASP",
    tutorial_finesseBasic_2_4="Objektivo: faligu la tetrominon en la reliefigita pozicio movante ĝin maksimume dufoje",
    tutorial_finesseBasic_3="③Murturno",
    tutorial_finesseBasic_3_1="Ĉu vi vidas, la peco turnas ĉirkaŭ specifa centro (blanka punkto)",
    tutorial_finesseBasic_3_2="Por la sekvaj pecoj: Z(ruĝo)/S(verdo)/I(cejano), la dekstrumaj kaj maldekstrumaj rotacio metos la pecon sur sian flankon",
    tutorial_finesseBasic_3_3="Objektivo: faligu la tetrominon en la reliefigita pozicio movante kaj turnante ĝin nur unufoje",
    tutorial_finesseBasic_4_1="Kombinante ĉi tiujn tri teknikojn",
    tutorial_finesseBasic_4_2="Per ĉirkaŭ 3 butonoj estas eble movi la pecon en ajna direkto",

    tutorial_finessePractice_1="5. Praktiko Fineco",
    tutorial_finessePractice_2="Minimumu la nombron da klavopremoj",
    tutorial_finessePractice_par="Par",

    tutorial_allclearPractice_1="6. Praktiko All Clear",
    tutorial_allclearPractice_2="Kompletigu kiel eble plej multajn de All Clears",

    tutorial_techrashPractice_1="7. Praktiko Tech-Erupcio",
    tutorial_techrashPractice_2="Kompletigu kiel eble plej multajn de Tech-Erupcio",

    tutorial_finessePlus_1="8. Elegantaj Movoj",
    tutorial_finessePlus_2="Usu kiel eble plej malmultajn butonojn",
}
return L
