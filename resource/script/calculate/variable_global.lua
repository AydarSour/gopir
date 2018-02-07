----------------
-----ИВЕНТЫ
----------------
--Для ивента Охота
Tick_Tack  = 0
Tick_Tack2 = 0
Tick_Tack3 = 0 
NameGarn=""
NameDark=""
NameMagi=""
NameEvent1= 0
NameEvent2= 0
NameEvent3= 0

--Переменные для осады
mablu = 0
dablu = 0
garn = 0
TerrDark=""
TerrGarn=""
TerrMagi=""
TerrDarkSol=0
TerrGarnSol=0
TerrMagiSol=0

--Ивент Мобы\Игроки\Квесты\Морские моб

 razrazrazraz = 0
 dvadvadvadva = 0
 tritritritri = 0
 chetchetchetchetche =0
 SCHET = 0-- люди
 --SCHET_MOB = 0 
 SCHET_QUEST = 0 -- квексты

 
    GameServer1 = {}
    GameServer1[1] = "garner"
    GameServer1[2] = "eastgoaf"
    GameServer1[3] = "lonetower"
	GameServer1[4] = "teampk"
    GameServer1[5] = "puzzleworld"
    GameServer1[6] = "puzzleworld2"
	GameServer2 = {}
    GameServer2[1] = "magicsea"
    GameServer2[2] = "jialebi"
    GameServer2[3] = "abandonedcity"
	GameServer2[4] = "abandonedcity2"
    GameServer2[5] = "abandonedcity3"
    GameServer2[6] = "darkswamp"
	GameServer2[7] = "leteria"
	GameServer3 = {}
    GameServer3[1] = "darkblue"
    GameServer3[2] = "winterland"
    GameServer3[3] = "shalan2"
	GameServer3[4] = "binglang2"
    GameServer3[5] = "leiting2"
    GameServer3[6] = "heilong"
	GameServer3[7] = "heilong2"
	GameServer4 = {}
    GameServer4[1] = "garner2"
    GameServer4[2] = "07xmas2"
    GameServer4[3] = "hell"
	GameServer4[4] = "hell2"
    GameServer4[5] = "hell3"
    GameServer4[6] = "hell4"
	GameServer4[7] = "hell5"
	GameServer4[8] = "darkblue2"
	GameServer4[9] = "bountypk"




------------------------------------------------------
--		Массивы и переменные ущелья песни войны  	--
------------------------------------------------------
CREATEFLAG_GREEN			= 0		-- Флаг 1ой команды
CREATEFLAG_RED				= 0		-- Флаг 2ой команды
FLAG_GREEN_GIVE				= nil	-- Взят ли флаг 1ой команды(зеленый)
FLAG_RED_GIVE				= nil	-- Взят ли флаг 2ой команды(красный)
CHECK_DEATH_SONGWAR			= 0

PLAYER_CHA_TEAM 			= {} 	-- Массив с персонажами

PLAYER_TEAM_ROLE_RED		= {}	-- Массив с дескрипторами(role) персонажей, [n] - role, тело - дескриптор
PLAYER_TEAM_ROLE_GREEN		= {}	-- Массив с дескрипторами(role) персонажей, [n] - role, тело - дескриптор
PLAYER_TEAM_COUNT_RED       = 0		-- Количество человек в красной команде
PLAYER_TEAM_COUNT_GREEN     = 0		-- Количество человек в зеленой команде

COUNT_PLAYER_ONLINE 		= 1		-- Сколько из них онлайн

FLAG_GREEN_CAPTURE			= 0		-- Чек захвата флага зелёных
FLAG_RED_CAPTURE			= 0		-- Чек захвата флага красных

EFFECT_BONUS_ONE			= 0
EFFECT_BONUS_TWO			= 0
EFFECT_BONUS_THREE			= 0
EFFECT_BONUS_FOUR			= 0

FLAG_DROP_GREEN				= 0
FLAG_DROP_RED				= 0

FLAG_RED_X					= 0
FLAG_RED_Y					= 0
FLAG_GREEN_X				= 0
FLAG_GREEN_Y				= 0

SONG_START					= 0
SONGWAR_MIN_PLAYER			= 2
SONGWAR_START_TIME			= 30
SONGWAR_MAX_SCORE			= 1500

SONGWAR_RED_TOWER_ONE 		= 0
SONGWAR_RED_TOWER_TWO 		= 0
SONGWAR_GREEN_TOWER_ONE 	= 0
SONGWAR_GREEN_TOWER_TWO 	= 0

SONGWAR_RED_SCORE			= 0
SONGWAR_GREEN_SCORE			= 0





------