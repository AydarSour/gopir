function config_entry(entry) 
	SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В Магическом океане ["..posx..","..posy.."] обнаружен портал, ведущий в [Затерянный Город].")
	local EntryName = "Забытый город 30-55"
		SetMapEntryEventName( entry, EntryName )
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

	local gmlvl = GetGmLv(role)
	if gmlvl >= 98 then
		SystemNotice(role, "Вход в Затерянный город администрации запрещен")
		return 0
	end
	
	local FightingBook_Num = CheckBagItem( role,3849 )
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "У вас должна быть Медаль отваги для входа в Затерянный город " )
		return 0
	end

	if Lv(Cha) >= 30 and Lv(Cha) <=45 then

	local Num
	Num = CheckBagItem(Cha, 1812)

	

	else
	SystemNotice(role, " В Затерянный город могут входить только персонажи с 30 по 45 уровень ")
	return 0
end
end



function begin_enter_abandonedcity(role, copy_mgr)
	SystemNotice(role,"Вы вошли в [Затерянный Город]") 
	MoveCity(role, "Затерянный Город высадка")
end