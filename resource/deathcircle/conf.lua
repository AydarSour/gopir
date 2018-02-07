-- ------------------------------------------------------------------------
-- Захват Флага Барбароссы
-- ------------------------------------------------------------------------
-- Карта проскриптована и создана Matt`ом
-- Копирайты:
--		[*] Moliyo [http://moliyo.com]
--		[*] Matt from Privatia
--		[*] Kajack & Snowcrash
-- ------------------------------------------------------------------------

-- ************************************************************************
-- Файл конфигурации карты
-- ************************************************************************
print( "Loading deathcircle conf.lua" )

deathcircle_conf = {} 

-- ---------------------------------
-- Включена\выключена карта
-- ---------------------------------
deathcircle_conf.enabled = true

-- ---------------------------------
-- Название карты(В игре)
-- ---------------------------------
deathcircle_conf.notice_heading = " Захват флага Барбороссы "

-- ---------------------------------
-- Настройки карты
-- ---------------------------------
deathcircle_conf.opening_duration = 50 -- Сколько минут открыта
deathcircle_conf.opens_every = 360 -- Через сколько откроется заного
deathcircle_conf.port_position_map = "garner"
deathcircle_conf.port_position_x = 2232 
deathcircle_conf.port_position_y = 2781

-- ---------------------------------
-- Награды
-- ---------------------------------
--Включить награды
deathcircle_conf.enable_rewards = true 

-- Награда за #1 место
deathcircle_conf.reward_first = 
{
	money = 20000000,
	reputation = 100,
	honor = 20,
	items = {
		{ id=6804, quantity=4, quality=4 },  
		{ id=6805, quantity=4, quality=4 },
		{ id=2777, quantity=5, quality=4 },
		{ id=2801, quantity=5, quality=4 },
		{ id=2802, quantity=5, quality=4 } 
	}
}

-- Награда за #2 место
deathcircle_conf.reward_second = 
{
	money = 1000000,
	reputation = 50,
	honor = 10,
	items = {
		{ id=2247, quantity=2, quality=4 },
		{ id=2777, quantity=3, quality=4 }
	}
}

-- Награда за #3 место
deathcircle_conf.reward_third = 
{
	money = 500000,
	reputation = 25,
	honor = 5,
	items = {
	{ id=7302, quantity=3, quality=4 }, 
	{ id=1136, quantity=3, quality=4 } 
	}
}

deathcircle_conf.check_cheaters_period = 20 -- Период проверки читеров

-- ---------------------------------
-- Эффект который ложится на персонажа
-- ---------------------------------
deathcircle_conf.flag_holder_state = 139


-- ---------------------------------
-- Scoring -- TODO, include conditions based on class, level diff...
-- ---------------------------------
deathcircle_conf.ranking_period = 15 -- Amount of seconds between 2 ranking update assignement to flag owner
deathcircle_conf.scoring_period = 5 -- Amount of seconds between 2 score assignement to flag owner

-- ---------------------------------
-- Настройка баланса
-- ---------------------------------

-- Воитель
deathcircle_conf.disable_stealth = true	-- Запрет на включения скрытности
deathcircle_conf.disable_stealth_for_flag_holder = true -- Запрет на включение скрытности носителю флага

deathcircle_conf.stun_duration_modifier = 1 

-- Вояг
deathcircle_conf.enable_stunning_conch = true
deathcircle_conf.stunning_conch_rate = 90 -- Add a value between 0 and 100 materializing the % of successful stuns
deathcircle_conf.stunning_conch_duration = 1.5 -- Duration of the conch's stun in seconds

deathcircle_conf.enable_slowing_lightning = true
deathcircle_conf.slowing_lightning_rate = 100  -- Add a value between 0 and 100 materializing the % of successful slowing
deathcircle_conf.slowing_lightning_duration = 2 -- Duration of the slow effect in seconds

-- Клерик
deathcircle_conf.disable_ts = true

-- ---------------------------------
-- Монстры
-- ---------------------------------

-- Защитники
deathcircle_conf.enable_guardians = false -- Guardians are monsters standing at all the entrance of the central room
deathcircle_conf.guardian_types = { 1100 }
deathcircle_conf.guardian_location = { 
	{ x = 78,   y = 97  },
	{ x = 82,   y = 83  },
	{ x = 94,   y = 77  },
	{ x = 109,  y = 83  },
	{ x = 113,  y = 96  },
	{ x = 108,  y = 108 },
	{ x = 95,   y = 111 },
	{ x = 83,   y = 109 }
}

-- Тотемы
deathcircle_conf.enable_totems = true -- Totems are non moving characters using skills on players. Default locations are on the intermediary ring
deathcircle_conf.totem_types = { 953 }
deathcircle_conf.totem_location = { 
	  { x = 63  , y = 63  },
	  { x = 95  , y = 49  },
	  { x = 129 , y = 62  },
	  { x = 141 , y = 95  },
	  { x = 127 , y = 128 },
	  { x = 95  , y = 141 },
	  { x = 63  , y = 128 },
	  { x = 49  , y = 95  }
}

-- Рандомное появление монстров
deathcircle_conf.enable_random_spawns = true
deathcircle_conf.random_mob_lifelength = 0.5 -- Life time of the mob in minutes. Make sure the mob wont survive from one session of deathcircle to the other. 
deathcircle_conf.random_mob_count = 15 -- Amount of mob randomly spawned on the map everytime
deathcircle_conf.random_mob_period = 60 -- Amount of seconds between 2 random monster spawn
deathcircle_conf.random_mob_types = { 951 } -- List of mob uuid that might spawn
dofile(GetResPath("deathcircle/spawnCoords.lua")) -- stored in separated file to avoid flooding conf file.


-- ************************************************************************
-- DO NOT EDIT BELLOW !!!
-- ************************************************************************

-- -----------------------------
-- Global variables used within
-- the game.
-- -----------------------------
deathcircle_entry = nil
deathcircle_playercount = 0
function deathcircle_init() 
	deathcircle_players = { }
	deathcircle_flag_holder = nil
	deathcircle_ranking = { first = nil, second = nil, third = nil }
	deathcircle_cycle_count = 0
end

deathcircle_init()

-- Initiate functions hook to alter "normal" behavior
dofile(GetResPath("deathcircle/functionhook.lua"))


