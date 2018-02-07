print( "Загрузка Ctrl.lua" )

function config(map)
	MapCanSavePos(map, 0)
	MapCanPK(map, 1)
	MapCopyNum(map, 1)
	MapCopyStartType(map, 1)
	SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 0)
	MapType ( map , 5 )
end

function get_map_entry_pos_songwar()
	local POS_X=910
	local POS_Y=1069
	return POS_X , POS_Y
end

function init_entry(map)
	SetMapEntryMapName(map, "garner")
	SetMapEntryTime(map, "2005/8/30/0/0", "0/0/0", "0/0/0", "0/0/0")
end

function map_copy_run_songwar( map_copy )
	-- Закрытие карты
	local ply_num = GetMapCopyPlayerNum(map_copy)
	-- Если игроков 0 и бой идёт то закрываем
	if ply_num == 0 and SONG_START == 1 then
		close_songwar()
	end
	
	-- Победа
	if SONGWAR_RED_SCORE >= SONGWAR_MAX_SCORE or SONGWAR_GREEN_SCORE >= SONGWAR_MAX_SCORE then
		-- Если красная набрала больше очков
		if SONGWAR_RED_SCORE >= SONGWAR_MAX_SCORE then
			add_reward(1)
			close_songwar()
		-- Если зеленая набрала больше очков
		elseif SONGWAR_GREEN_SCORE >= SONGWAR_MAX_SCORE then
			add_reward(2)
			close_songwar()
		end
	end	
	
	-- Функция проверки на смерть
	check_death_player()

	-- Если флаги не созданы, не взяты и бой начался то поставим флаги на базы и выставим бонусные эффекты
	if CREATEFLAG_GREEN == 0 and CREATEFLAG_RED == 0 and FLAG_ONE_GIVE == nil and FLAG_TWO_GIVE == nil and SONG_START == 1 then
		-- Зеленая команда
		CREATEFLAG_GREEN = CreateCha(1209, 2500, 5545, 145, 30)
		-- Красная команда
		CREATEFLAG_RED = CreateCha(1209, 18275, 5715, 145, 30)
		
		SetChaLifeTime(CREATEFLAG_GREEN, 90000000)
		SetChaLifeTime(CREATEFLAG_RED, 90000000)
		
		AddState( CREATEFLAG_GREEN, CREATEFLAG_GREEN, 229, 1, 360000 )
		AddState( CREATEFLAG_RED, CREATEFLAG_RED, 229, 1, 360000 )
		
		AddState( CREATEFLAG_GREEN, CREATEFLAG_GREEN, 237, 1, 360000 )
		AddState( CREATEFLAG_RED, CREATEFLAG_RED, 237, 1, 360000 )
		
		-- Эффекты красной команды
		EFFECT_BONUS_ONE			= CreateCha(1209, 14175, 6175, 145, 30)
		EFFECT_BONUS_TWO			= CreateCha(1209, 14175, 4925, 145, 30)
		SetChaLifeTime(EFFECT_BONUS_ONE, 90000000)
		SetChaLifeTime(EFFECT_BONUS_TWO, 90000000)
		AddState( EFFECT_BONUS_ONE, EFFECT_BONUS_ONE, 239, 1, 360000 )
		AddState( EFFECT_BONUS_TWO, EFFECT_BONUS_TWO, 238, 1, 360000 )
		-- Эффекты зеленой команды
		EFFECT_BONUS_THREE			= CreateCha(1209, 6575, 6175, 145, 30)
		EFFECT_BONUS_FOUR			= CreateCha(1209, 6575, 4925, 145, 30)	
		SetChaLifeTime(EFFECT_BONUS_THREE, 90000000)
		SetChaLifeTime(EFFECT_BONUS_FOUR, 90000000)	
		AddState( EFFECT_BONUS_THREE, EFFECT_BONUS_THREE, 239, 1, 360000 )
		AddState( EFFECT_BONUS_FOUR, EFFECT_BONUS_FOUR, 238, 1, 360000 )	

		AddState( EFFECT_BONUS_ONE, EFFECT_BONUS_ONE, 237, 1, 360000 )
		AddState( EFFECT_BONUS_TWO, EFFECT_BONUS_TWO, 237, 1, 360000 )
		AddState( EFFECT_BONUS_THREE, EFFECT_BONUS_THREE, 237, 1, 360000 )
		AddState( EFFECT_BONUS_FOUR, EFFECT_BONUS_FOUR, 237, 1, 360000 )		
	end
	
	-- Отсчёт времени до старта локации.
	if SONG_START == 1 and SONGWAR_START_TIME > 1 then
		SONGWAR_START_TIME = SONGWAR_START_TIME - 1
	elseif SONGWAR_START_TIME == 1 then
		SONGWAR_START_TIME = SONGWAR_START_TIME - 1
		Notice("\209\240\224\230\229\237\232\229 \226 [\211\249\229\235\252\229 \207\229\241\237\232 \194\238\233\237\251] \237\224\247\224\235\238\241\252!")
	end		
end

-- Функция выполняется при входе на карту
function after_enter_songwar( role, map_copy )
	-- Выдача при входе предмета для сброса флага игрокам
	if IsPlayer(role) == 1 then
		local is_item = GetChaItem2 ( role , 2 , 7194 )
		
		for COUNT_PLAYER = 1, table.getn(PLAYER_TEAM_ROLE_GREEN), 1 do
			if GetChaDefaultName(PLAYER_TEAM_ROLE_GREEN[COUNT_PLAYER]) == GetChaDefaultName(role) then
				SetChaSideID(role, 1)
				SetSpawnPos(role, "Song War Green")
			end
		end
		
		for COUNT_PLAYER = 1, table.getn(PLAYER_TEAM_ROLE_RED), 1 do
			if GetChaDefaultName(PLAYER_TEAM_ROLE_RED[COUNT_PLAYER]) == GetChaDefaultName(role) then
				SetChaSideID(role, 2)
				SetSpawnPos(role, "Song War Red")
			end
		end
		
		if is_item == nil then
			local r1,r2 =MakeItem ( role , 7194  , 1 , 4 )
		end
	end
end

-- Функция выполняется при покидании карты
function before_leave_songwar( role )
	-- Если игрок покинул карту то убираем его из списка команды
	if IsPlayer(role) == 1 then
		for COUNT_PLAYER = 1, table.getn(PLAYER_TEAM_ROLE_GREEN), 1 do
			if GetChaDefaultName(PLAYER_TEAM_ROLE_GREEN[COUNT_PLAYER]) == GetChaDefaultName(role) then
				PLAYER_TEAM_ROLE_GREEN[COUNT_PLAYER] = nil
				PLAYER_TEAM_COUNT_GREEN = PLAYER_TEAM_COUNT_GREEN - 1
			end
		end
		
		for COUNT_PLAYER = 1, table.getn(PLAYER_TEAM_ROLE_RED), 1 do
			if GetChaDefaultName(PLAYER_TEAM_ROLE_RED[COUNT_PLAYER]) == GetChaDefaultName(role) then
				PLAYER_TEAM_ROLE_RED[COUNT_PLAYER] = nil
				PLAYER_TEAM_COUNT_RED = PLAYER_TEAM_COUNT_RED - 1
			end
		end
		
		-- Если игрок носитель и вышел возвращаем флаг
		if GetChaStateLv(role, 229) > 0 and GetChaSideID(role) == 1  then
			flag_restore(1)
		elseif GetChaStateLv(role, 229) > 0 and GetChaSideID(role) == 2 then
			flag_restore(2)
		end
	end		
	
	SetSpawnPos(role, "Argent City")
end

function close_songwar()
	DelCha(CREATEFLAG_GREEN)
	DelCha(CREATEFLAG_RED)
	DelCha(EFFECT_BONUS_ONE)
	DelCha(EFFECT_BONUS_TWO)
	DelCha(EFFECT_BONUS_THREE)
	DelCha(EFFECT_BONUS_FOUR)
	DelCha(FLAG_DROP_GREEN)
	DelCha(FLAG_DROP_RED)
		
	CREATEFLAG_GREEN			= 0		-- Флаг 1ой команды
	CREATEFLAG_RED				= 0		-- Флаг 2ой команды	
	FLAG_GREEN_GIVE				= nil		-- Взят ли флаг 1ой команды(зеленый)
	FLAG_RED_GIVE				= nil		-- Взят ли флаг 2ой команды(красный)

	PLAYER_CHA_TEAM 			= {} 	-- Массив с персонажами

	PLAYER_TEAM_ROLE_RED		= {}	-- Массив с дескрипторами(role) персонажей, [n] - role, тело - дескриптор
	PLAYER_TEAM_ROLE_GREEN		= {}	-- Массив с дескрипторами(role) персонажей, [n] - role, тело - дескриптор
	PLAYER_TEAM_COUNT_RED       = 0		-- Количество человек в красной команде
	PLAYER_TEAM_COUNT_GREEN     = 0		-- Количество человек в зеленой команде

	SONGWAR_RED_SCORE			= 0		-- Количество захваченных флагов первой командой
	SONGWAR_GREEN_SCORE			= 0		-- Количество захваченных флагов второй командой

	COUNT_PLAYER_ONLINE 		= 1		-- Сколько из них онлайн

	FLAG_GREEN_CAPTURE			= 0		-- Чек захвата флага зелёных
	FLAG_RED_CAPTURE			= 0		-- Чек захвата флага красных

	FLAG_RED_X					= 0
	FLAG_RED_Y					= 0
	FLAG_GREEN_X				= 0
	FLAG_GREEN_Y				= 0

	SONG_START					= 0
	SONGWAR_START_TIME			= 30
	SONGWAR_RED_TOWER_ONE 		= 0
	SONGWAR_RED_TOWER_TWO 		= 0
	SONGWAR_GREEN_TOWER_ONE 	= 0
	SONGWAR_GREEN_TOWER_TWO 	= 0
	Notice("\211\249\229\235\252\229 \207\229\241\237\232 \194\238\233\237\251 \231\224\234\240\251\242\238!")
end

-- Функция выдачи наград за победу
function add_reward(type_team)
	if type_team == 1 then
		Notice("\202\238\236\224\237\228\224 [\202\240\224\241\237\251\245] \226\251\232\227\240\224\235\224!")
	elseif type_team == 2 then
		Notice("\202\238\236\224\237\228\224 [\199\229\235\229\237\251\245] \226\251\232\227\240\224\235\224!")
	end
end

-- Проверка на смерть
function check_death_player()
	if IsChaLiving(FLAG_GREEN_GIVE) == 0 and FLAG_GREEN_GIVE ~= nil and CHECK_DEATH_SONGWAR == 0 then
		CHECK_DEATH_SONGWAR = 1
		flag_restore(2)
	elseif IsChaLiving(FLAG_RED_GIVE) == 0 and FLAG_RED_GIVE ~= nil and CHECK_DEATH_SONGWAR == 0  then
		CHECK_DEATH_SONGWAR = 1
		flag_restore(1)
	end
end