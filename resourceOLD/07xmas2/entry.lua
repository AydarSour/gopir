------
-- СНЕЖНАЯ ВОЙНА
------

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: По координатам ["..posx..","..posy.."] рядом с Ледынью начинаются Снежные войны!")
	local EntryName = "Снежные войны - некоректная работа"
	local Now_Time = tonumber(os.date("%H"))
	
		local EntryName = "Снежная война"
		SetMapEntryEventName( entry, EntryName )
	
end

function after_destroy_entry_07xmas2(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Портал в Снежные войны закрылся!")
end

function after_player_login_07xmas2(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: По координатам ["..posx..","..posy.."] рядом с Ледынью начинаются Снежные войны!")
end

function check_can_enter_07xmas2( role, copy_mgr )
	

	local Now_Time = tonumber(os.date("%H"))
		if Lv(role) < 40 then
			SystemNotice(role, "Вы должны быть не ниже 40 уровня, чтобы участвовать в Снежной войне")
			return 0
		end
		
	
	
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )

	if FightingBook_Num <= 0 then
		SystemNotice ( role , "У вас должна быть Медаль отваги, чтобы участвовать в Снежной войне" )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end
	
	if gmlvl > 50 then
		SystemNotice(role, "Вход в Серебряный Хаос администрации запрещен")
		return 0
	end

end

function begin_enter_07xmas2(role, copy_mgr) 
	SystemNotice(role,"Вы вошли в [Снежные войны]")
	MoveCity(role, "Snow War")
end
--------------------------------------------------------------------------------------
-- Снежная война v2.0
-- (c) V3ct0r
-- 08.01.2017
-- entry.lua
--------------------------------------------------------------------------------------
print "Start Snow"

-- Настройка портала
function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492, 1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
	local EntryName = "Снежная война 40+"
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Обьявление: В Ледыни, открылся портал ["..posx..","..posy.."] ведущий в Снежную войну!")
end
-- Событие возникает после исчезновения портала
function after_destroy_entry_07xmas2(entry)
Notice("\206\225\250\255\226\235\229\237\232\229: \207\238\240\242\224\235 \226 \209\237\229\230\237\243\254 \226\238\233\237\243 \232\241\247\229\231!")
    --Notice("Объявление: Портал в Снежную войну исчез!") 
end

-- Событие возникает после подключения игрока к серверу
function after_player_login_07xmas2(entry, player_name)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
		ChaNotice(player_name, "Объявление: По координатам ["..posx..","..posy.."] в Ледыни начинется Снежная война!")
end

-- Событие возникает после входа в портал
function begin_enter_07xmas2(role, copy_mgr) 
	SystemNotice(role, "\194\251 \226\238\248\235\232 \226 \209\237\229\230\237\243\254 \226\238\233\237\243!")
	--SystemNotice(role, "Вы вошли в Снежную войну!")
	MoveCity(role, "\209\237\229\230\237\224\255 \226\238\233\237\224")
	--MoveCity(role, "Снежная война")
end

-- Функция проверяет, может ли игрок войти в портал
function check_can_enter_07xmas2(role, copy_mgr)
	-- Уровень 40+
	if (Lv(role) < 40) then
		SystemNotice(role, "\194\251 \228\238\235\230\237\251 \225\251\242\252 \245\238\242\255 \225\251 40 \243\240\238\226\237\255, \247\242\238\225\251 \243\247\224\241\242\226\238\226\224\242\252 \226 \209\237\229\230\237\238\233 \226\238\233\237\229!")
		--SystemNotice(role, "Вы должны быть хотя бы 40 уровня, чтобы участвовать в Снежной войне!")
		return 0
	end

	-- Медаль отваги
	local medal = CheckBagItem(role, 3849)
	if (medal == 0) then
		SystemNotice(role, "\211 \226\224\241 \228\238\235\230\237\224 \225\251\242\252 \204\229\228\224\235\252 \238\242\226\224\227\232, \247\242\238\225\251 \243\247\224\241\242\226\238\226\224\242\252 \226 \209\237\229\230\237\238\233 \226\238\233\237\229!")
		--SystemNotice(role, "У вас должна быть Медаль отваги, чтобы участвовать в Снежной войне!")
		return 0
	end
	local gmlvl = GetGmLv(role)
	if gmlvl >= 98 then
		SystemNotice(role, "Вход в Снежную войну администрации запрещен")
		return 0
	end

	return 1
end