function config_entry(entry) 
	SetMapEntryEntiID(entry, 2492,4)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В Магическом океане ["..posx..","..posy.."] обнаружен портал, ведущий в [Затерянный Город].")
end

function after_destroy_entry_abandonedcity(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Портал в [Затерянный Город] закрылся! Удачи!") 
end

function after_player_login_abandonedcity(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: В Магическом океане ["..posx..","..posy.."] обнаружен портал, ведущий в [Затерянный Город].")
end

function check_can_enter_abandonedcity(role, copy_mgr)
	local Cha = TurnToCha(role)
	if Lv(Cha) >=30 and Lv(Cha) <=45 then
		return 1
	else
		SystemNotice(role, "Только игроки 30-45 уровня могут попасть в Затерянный Город.")
		return 0    
	end
end



function begin_enter_abandonedcity(role, copy_mgr)
	SystemNotice(role,"Вы вошли в [Затерянный Город]") 
	MoveCity(role, "Forsaken City")
end