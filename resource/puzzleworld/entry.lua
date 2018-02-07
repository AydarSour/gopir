function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Объявление: В окресностях Великого Синего океана ["..posx..","..posy.."] обнаружен портал, ведущий в [Мир Демонов].")
	local EntryName = "Мир Демонов 55-80"
		SetMapEntryEventName( entry, EntryName )
end

function after_destroy_entry_puzzleworld(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Объявление: Портал в [Мир Демонов] закрылся. Удачи!") 
end

function after_player_login_puzzleworld(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "Объявление: В окресностях Великого Синего океана ["..posx..","..posy.."] обнаружен портал, ведущий в [Мир Демонов].")
end

function check_can_enter_puzzleworld( role, copy_mgr )
	if Lv(role) >=55 and Lv(role)<=90  then
		return 1
	else
		SystemNotice(role, "Вы должны быть не ниже 55 уровня и не выше 80, чтобы войти в [Мир Демонов]")
		return 0    
	end
	local gmlvl = GetGmLv(role)
	if gmlvl >= 98 then
		SystemNotice(role, "Вход в Мир демонов администрации запрещен")
		return 0
	end
end

function begin_enter_puzzleworld(role, copy_mgr) 
	SystemNotice(role,"Вы вошли в [Мир Демонов]") 
	MoveCity(role, "Demonic World")
end