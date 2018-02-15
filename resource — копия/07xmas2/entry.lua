------
-- СНЕЖНАЯ ВОЙНА
------

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: По координатам ["..posx..","..posy.."] в Магическом океане начинаются Снежные войны!")
	--Notice("Объявление: По координатам ["..posx..","..posy.."] на острове администрации начинаются Снежные войны!")
	local EntryName = "Снежные войны - некоректная работа"
	local Hour = GetNowTime()
	if Hour == 5 or Hour == 12 or Hour == 21 then
	--if Hour == 1 or Hour == 3 or Hour == 5 or Hour == 7 or Hour == 9 or Hour == 11 or Hour == 13 or Hour == 15 or Hour == 17 or Hour == 19 or Hour == 21 or Hour == 23 then
		type_07xmas2 = "small"
	elseif Hour == 6 or Hour == 13 or Hour == 22 then
	--elseif Hour == 0 or Hour == 2 or Hour == 4 or Hour == 6 or Hour == 8 or Hour == 10 or Hour == 12 or Hour == 14 or Hour == 16 or Hour == 18 or Hour == 20 or Hour == 22 then 
		type_07xmas2 = "big"
	end
	if type_07xmas2 == "big" then
		EntryName = "Снежные войны с 61 уровня"
	elseif type_07xmas2 == "small" then
		EntryName = "Снежные войны с 30 по 60 уровни"
	end
	SetMapEntryEventName( entry, EntryName )
end

function after_destroy_entry_07xmas2(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Портал в Снежные войны закрылся!")
end

function after_player_login_07xmas2(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: По координатам ["..posx..","..posy.."] в Магическом океане начинаются Снежные войны!")
	--ChaNotice(player_name, "Объявление: По координатам ["..posx..","..posy.."] на острове администрации начинаются Снежные войны!")
end

function check_can_enter_07xmas2( role, copy_mgr )

	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "У вас должна быть Медаль отваги, чтобы участвовать в Снежных войнах " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end
	local Hour = GetNowTime()
	if Hour == 5 or Hour == 12 or Hour == 21 then
	--if Hour == 1 or Hour == 3 or Hour == 5 or Hour == 7 or Hour == 9 or Hour == 11 or Hour == 13 or Hour == 15 or Hour == 17 or Hour == 19 or Hour == 21 or Hour == 23 then
		type_07xmas2 = "small"
	elseif Hour == 6 or Hour == 13 or Hour == 22 then
	--elseif Hour == 0 or Hour == 2 or Hour == 4 or Hour == 6 or Hour == 8 or Hour == 10 or Hour == 12 or Hour == 14 or Hour == 16 or Hour == 18 or Hour == 20 or Hour == 22 then 
		type_07xmas2 = "big"
	end
	if type_07xmas2 == "small" then
		if Lv(role) < 30 then
			SystemNotice(role, "Вы должны быть не ниже 30 уровня, чтобы участвовать в Снежных войнах ")
			return 0    
		elseif Lv(role) > 60 then
			SystemNotice(role, "Вы должны быть не выше 60 уровня, чтобы участвовать в Снежных войнах ")
			return 0    
		end
	elseif type_07xmas2 == "big" then
		if Lv(role) <= 60 then
			SystemNotice(role, "Вы должны быть не ниже 61 уровня, чтобы участвовать в Снежных войнах ")
			return 0
		end
	else
		return 0
	end
	return 1
end

function begin_enter_07xmas2(role, copy_mgr) 
	SystemNotice(role,"Вы вошли в [Снежные войны]")
	MoveCity(role, "Snow War")
end
